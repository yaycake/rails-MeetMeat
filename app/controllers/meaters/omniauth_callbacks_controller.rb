class Meaters::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # binding.pry
    meater = Meater.find_for_facebook_oauth(request.env['omniauth.auth'])

    if meater.persisted?
      sign_in_and_redirect meater, event: :authentication
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_meater_registration_url
    end
  end
end
