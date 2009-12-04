# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_urlist_session',
  :secret      => '2e130271ea597ea047f780faa8b22897be885728c4ef7a9bf3e7f5835ca3815f6fdc7d0d36d8721981020b7a5354327a9f27eeda6071d098d38667fba45e69bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
