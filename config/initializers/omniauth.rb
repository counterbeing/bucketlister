OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['BUCKETLISTED_FACEBOOK_KEY'], ENV['BUCKETLISTED_FACEBOOK_SECRET'], {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
end
