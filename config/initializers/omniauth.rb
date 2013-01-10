OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "4xKQqTqagmRYiP8iXMppAA", "f7iCVAiSzhKZ0OAh2QBpRZczXwkAmyC5UcopJpAww"
  # provider :google_apps #, domain: 'intridea.com'
  # provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'

  # If you don't need a refresh token -- if you're only using Google for account creation/auth and don't need google services -- set the access_type to 'online'.
  # Also, set the approval prompt to an empty string, since otherwise it will be set to 'force', which makes users manually approve to the Oauth every time they log in.
  # See http://googleappsdeveloper.blogspot.com/2011/10/upcoming-changes-to-oauth-20-endpoint.html
  # provider :google_oauth2, "AIzaSyBncFc29CckT-g99_cEiuRjYSOJPQjEGGo", "-CwbLl48_55Oo5ncY11d8vzn", {access_type: 'online', approval_prompt: ''}
  # provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'

  # If you don't need a refresh token -- if you're only using Google for account creation/auth and don't need google services -- set the access_type to 'online'.
  # Also, set the approval prompt to an empty string, since otherwise it will be set to 'force', which makes users manually approve to the Oauth every time they log in.
  # See http://googleappsdeveloper.blogspot.com/2011/10/upcoming-changes-to-oauth-20-endpoint.html
  provider :google_oauth2, "492096658480-eempme4g97hqhq8mi1v7f86a2n5eqjui.apps.googleusercontent.com", "V6SZkiguu3SjCtFcVtX3myRL", {access_type: 'online', approval_prompt: ''}
  provider :google_apps
  OmniAuth.config.full_host = "http://lvh.me:3000"
end