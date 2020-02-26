CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  # config.storage = :fog
  config.fog_credentials = {
    provider:              'AWS',                        # required
      aws_access_key_id:     "#{ENV["AWS_ACCESS_ID"]}",                        # required
      aws_secret_access_key: "#{ENV["AWS_ACCESS_SECRET_KEY"]}",                        # required
      region:                "#{ENV["AWS_REGION"]}",      
      endpoint:              "#{ENV["AWS_S3_END_POINT"]}" 
  }
  config.fog_directory  = 'profilepics-believeting'            # required
  config.remove_previously_stored_files_after_update = true
end