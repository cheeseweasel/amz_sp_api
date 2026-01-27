#!/bin/bash
# exit on error
set -e

# Adjust these paths as needed
MODELS_ROOT="../selling-partner-api-models/models"
CODEGEN_JAR="../swagger-codegen-cli.jar"  # <-- UPDATE THIS to your actual JAR location
JAVA_OPTS="-Xmx1024m"  # optional, adjust memory if needed

for FILE in $(find "$MODELS_ROOT" -name "*.json" | sort); do
  # Extract API directory name (e.g. fulfillment-inbound-api-model)
  API_DIR=$(dirname "$FILE" | xargs basename)

  # Extract version from filename (e.g. fulfillmentInboundV0.json → V0, fulfillmentInbound_2024-03-20.json → 20240320)
  FILENAME=$(basename "$FILE")
  if [[ "$FILENAME" =~ [Vv]0 ]]; then
    VERSION_SANITIZED="0"
    VERSION_MODULE="V0"
  elif [[ "$FILENAME" =~ _([0-9]{4})-([0-9]{2})-([0-9]{2}) ]]; then
    YEAR=${BASH_REMATCH[1]}
    MONTH=${BASH_REMATCH[2]}
    DAY=${BASH_REMATCH[3]}
    VERSION_SANITIZED="${YEAR}${MONTH}${DAY}"   # 20240320
    VERSION_MODULE="V${VERSION_SANITIZED}"
  else
	# No version in filename → treat as V0
    VERSION_SANITIZED="0"
    VERSION_MODULE="V0"
    echo "No version detected in $FILENAME → defaulting to V0"
  fi

  # Versioned API_NAME for output dir (dir + version suffix)
  API_NAME="${API_DIR}-${VERSION_SANITIZED}"

  # Base module name (capitalized, no hyphens)
  MODULE_BASE=$(echo "$API_DIR" | perl -pe 's/(^|-)./uc($&)/ge;s/-//g')   # FulfillmentInboundApiModel

  # Full nested module
  MODULE_NAME="${MODULE_BASE}::${VERSION_MODULE}"   # FulfillmentInboundApiModel::V20240320

  echo "Processing $FILE"
  echo "  → API_NAME:   $API_NAME"
  echo "  → MODULE_NAME: AmzSpApi::$MODULE_NAME"

  # Clean previous output for this version
  rm -rf "lib/${API_NAME}"

  mkdir -p "lib/${API_NAME}"

  # Copy and customize config.json for this run
  cp config.json "lib/${API_NAME}/config.json"

  sed -i "s/GEMNAME/${API_NAME}/g" "lib/${API_NAME}/config.json"
  sed -i "s/MODULENAME/${MODULE_BASE}/g" "lib/${API_NAME}/config.json"   # temporary, overridden below

  # Generate with java -jar, forcing versioned packages
  java $JAVA_OPTS -jar "$CODEGEN_JAR" generate \
    -i "$FILE" \
    -l ruby \
    -c "lib/${API_NAME}/config.json" \
    -o "lib/${API_NAME}" \
    --additional-properties="gemName=amz_sp_api,modelPackage=AmzSpApi.${MODULE_NAME//::/.},apiPackage=AmzSpApi.${MODULE_NAME//::/.}" \
    > /dev/null

  # Move generated files up – flatten like old behavior
  NESTED_LIB="lib/${API_NAME}/lib/amz_sp_api"

  if [ -d "$NESTED_LIB" ]; then
    echo "Flattening nested models/apis from $NESTED_LIB into lib/${API_NAME}/"
    mv "$NESTED_LIB"/* "lib/${API_NAME}/" 2>/dev/null || true
    mv "$NESTED_LIB/."* "lib/${API_NAME}/" 2>/dev/null || true
    rm -rf "$NESTED_LIB"
  else
    echo "Warning: No nested amz_sp_api dir found in lib/${API_NAME}"
  fi

  # Explicitly handle the main entry file (often placed directly in lib/${API_NAME}/lib/)
  ENTRY_SOURCE="lib/${API_NAME}/lib/amz_sp_api.rb"
  ENTRY_TARGET="lib/${API_NAME}.rb"

  if [ -f "$ENTRY_SOURCE" ]; then
    echo "Found main entry file at $ENTRY_SOURCE → renaming & moving to $ENTRY_TARGET"
    mkdir -p "lib/${API_NAME}"  # ensure target dir exists
    mv "$ENTRY_SOURCE" "$ENTRY_TARGET"
  else
    echo "No main entry file found at $ENTRY_SOURCE – checking alternative location..."
    # Fallback: sometimes it's already moved or named differently
    if [ -f "lib/${API_NAME}/amz_sp_api.rb" ]; then
      mv "lib/${API_NAME}/amz_sp_api.rb" "$ENTRY_TARGET"
      echo "Renamed from root-level amz_sp_api.rb"
    fi
  fi

  # ONLY NOW clean up the empty lib/ subdir (safe because entry file is already rescued)
  rm -rf "lib/${API_NAME}/lib" 2>/dev/null || true

  # Remove unwanted files
  rm "lib/${API_NAME}"/*.gemspec 2>/dev/null || true
  rm -f "lib/${API_NAME}/"*.md   # optional: remove any leftover docs

  # Post-process to fix/ensure module nesting in generated .rb files
  find "lib/${API_NAME}" -type f -name "*.rb" -exec sed -i \
    -e "s/module AmzSpApi::${MODULE_BASE}/module AmzSpApi::${MODULE_NAME}/g" \
    -e "s/require 'amz_sp_api\//require '${API_NAME}\//g" \
    -e "s/AmzSpApi::${MODULE_BASE}\.const_get/AmzSpApi::${MODULE_NAME}.const_get/g" \
    -e "s/ApiClient\.default/AmzSpApi::${MODULE_NAME}::ApiClient.default/g" \
    -e "s|@base_path = 'https://sellingpartnerapi-na.amazon.com/'|@base_path = '/'|g" \
    -e "s/@api_client = api_client/@api_client = api_client\n      @api_client.model_namespace = Module.nesting[1]/g" \
    {} \;

  if [ -f "$ENTRY_TARGET" ]; then
    sed -i "s/module AmzSpApi::${MODULE_BASE}/module AmzSpApi::${MODULE_NAME}/" "$ENTRY_TARGET"
    sed -i "s/require 'amz_sp_api\//require '${API_NAME}\//g" "$ENTRY_TARGET"
    sed -i "s/AmzSpApi::${MODULE_BASE}\.const_get/AmzSpApi::${MODULE_NAME}.const_get/g" "$ENTRY_TARGET"
    sed -i "s/ApiClient\.default/AmzSpApi::${MODULE_NAME}::ApiClient.default/g" "$ENTRY_TARGET"
    sed -i "s|@base_path = 'https://sellingpartnerapi-na.amazon.com/'|@base_path = '/'|g" "$ENTRY_TARGET"
    echo "Patched module/require in $ENTRY_TARGET"
  fi

  echo "Generated: lib/${API_NAME}"
done

echo "Generation complete. Versioned dirs created under lib/."