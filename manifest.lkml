project_name: "block-google-ads-snowflake"

# # Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-snowflake"
  ref: "e85634bcf7d66e2978a52371360903a91b3fef89"
}

remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-fivetran-snowflake"
  ref: "0ef317b7c76e8849792aa0297af00ad8bb6461bc"
}

remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "858973420837f60f27f6ffa30a431e755d61de7a"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: GOOGLE_ADS_SCHEMA {
    value: "@{GOOGLE_ADS_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-google-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "snowflake-apps"
  export: override_required
}

constant: GOOGLE_ADS_SCHEMA {
  value: "GOOGLE_ADS"
  export: override_required
}
