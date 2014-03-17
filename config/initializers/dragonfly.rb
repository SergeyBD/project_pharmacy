require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  protect_from_dos_attacks true
  secret "febb9ebbaa7fddf75140fd9fedc9e45e3b213b88abe0c1fd8177f6a54885f297"

  url_format "/media/:job/:name"

   datastore :s3,
    bucket_name: 'pharmacy2014',
    access_key_id: 'AKIAJPNC5JGVRZFTW3JA',
    secret_access_key: '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'
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
