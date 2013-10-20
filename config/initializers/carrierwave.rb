CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],     # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],                         # required
    }
  config.asset_host       = "http://#{ENV['S3_BUCKET']}.s3.amazonaws.com"
  config.fog_directory  = ENV['S3_BUCKET']
  config.fog_attributes = {'Cache-Control' => 'public,max-age=315576000'}
  config.storage = :fog

end
