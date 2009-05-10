# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_appTwo_session',
  :secret      => '05506910e56587eea95418f5f3d0175bf11d734579bbdde755bc33dafc07778cb4965703bd61f0dd4b8211d1dea3b954bad97a1281e2faa1cb6da96f6700d330'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
