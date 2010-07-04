# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_zosia_session',
  :secret      => 'd0cd3fdcfcfacf7fa652852a262aa6e2b780fccedb9a68b16680774d366400cd1d79f00526f6c070d6c09d37279563401a177199498cf0927fffb6152b9d6b5f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
