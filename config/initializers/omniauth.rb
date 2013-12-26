OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['BUCKETLISTED_FACEBOOK_KEY'], ENV['BUCKETLISTED_FACEBOOK_SECRET'], {:client_options => {:ssl => {:ca_file => "/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"}}}
end
