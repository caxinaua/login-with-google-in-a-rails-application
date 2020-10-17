json.extract! user, :id, :uid, :access_token, :email, :name, :picture, :locale, :provider, :created_at, :updated_at
json.url user_url(user, format: :json)
