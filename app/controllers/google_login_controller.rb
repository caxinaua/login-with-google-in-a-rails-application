class GoogleLoginController < ApplicationController
  def callback
    # keys: access_token expires_in scope token_type id_token
    @auth = LoginWithGoogle::Api.auth code: params[:code]

    # keys: id email verified_email name given_name family_name picture locale
    @info = LoginWithGoogle::Api.info @auth

    user = User.find_by(uid: @info['id'])
    if user
      user.update access_token: @auth['access_token']
    else
      user = User.create({ uid: @info['id'],
                           access_token: @auth['access_token'],
                           email: @info['email'],
                           name: @info['name'],
                           picture: @info['picture'],
                           locale: @info['locale'],
                           provider: 'google' })
    end
    session[:user] = user.id
    redirect_to user
  end

  def sign_out
    session.clear
    redirect_to root_path
  end
end
