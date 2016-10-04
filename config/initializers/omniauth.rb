require 'omniauth-orcid'

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  provider :orcid, Rails.application.secrets.orcid_omniauth_provider_key, Rails.application.secrets.orcid_omniauth_provider_secret,     
  :authorize_params => {
      :scope => '/authenticate',
      :auth_type => 'reauthenticate'
    }
end