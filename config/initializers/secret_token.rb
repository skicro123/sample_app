# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'
def secure_token
token_file = Rails.root.join('.secret')
if File.exist?(token_file)
# Use the existing token.
File.read(token_file).chomp
else
# Generate a new token and store it in token_file.
token = SecureRandom.hex(64)
File.write(token_file, token)
token
end
end

SampleApp::Application.config.secret_key_base = 'de30bd014a9ded9305ac1c02cee74a53137aeab2831b09b3c97cb5fc9d42e3ca74ca3701153f98a85ec93a8ef773e3e0c1c26ee026dbc16de385b20ad4b40634'
