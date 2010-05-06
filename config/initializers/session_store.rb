# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_remora_session',
  :secret      => '2be1a1033bec3f11ef9b44839a1ea78b02656c4a19cc39706ccd25b8dc87428f78c0f359879cfa9c9ce480b0c4144474914e04ec91e6dc2c1e5a7b98c524a94e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
