project_name: "block-google-ads-snowflake"

# # Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-snowflake"
  ref: "e85634bcf7d66e2978a52371360903a91b3fef89"
}

local_dependency: {
  project: "app-marketing-google-ads-adapter"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}

local_dependency: {
  project: "app-marketing-google-ads"
}

constant: CONFIG_PROJECT_NAME {
  value: "google_block_config"
}

constant: CONNECTION_NAME {
  value: "avalanche"
}

constant: GOOGLE_ADS_SCHEMA {
  value: "WR_ADS"
}
