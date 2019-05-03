OmniAuth.config.logger = Rails.logger
# OmniAuth.config.full_host = Rails.env.production? ? 'https://domain.com' : 'http://localhost:3000'
OmniAuth.config.full_host = 'http://localhost:3000'

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :google_oauth2, :callback_path => "/api/v1/google_oauth/callback"
  #   provider :google_oauth2, '166290031835-g3sa9jjqh3fcigg5ua6l7ek8jksghjki.apps.googleusercontent.com',
  #    '9qXbecNnYF9FEfAJpKyI5GwF', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  # provider :google_oauth2, '533530835278-n1tg5f9ijd44h1nfdr5p3so3pjc7q1j2.apps.googleusercontent.com',
  #    '1q9q-2hQ8yKiA3xSwpYRuWU1', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  # provider :google_oauth2, '166290031835-g3sa9jjqh3fcigg5ua6l7ek8jksghjki.apps.googleusercontent.com',
  #    '9qXbecNnYF9FEfAJpKyI5GwF', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  # web-client 2
  # provider :google_oauth2, '166290031835-8usvbj2htnb4e9omj4ui3qnnnr36iu8q.apps.googleusercontent.com',
  #    'Dhebk1EXXkVY3Vhak_kfc-ra', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  # printerous web-client 1
  provider :google_oauth2, '350698503292-5bfvr11k6q41fdt9v6tbsml8d8jr5f2o.apps.googleusercontent.com',
    'wJFL3R5ipCU--JBQ-2s0sLD_', {
       client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}},
       callback_path: "/api/v1/google_oauth/callback"
          }
end