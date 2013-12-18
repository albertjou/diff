class RegistrationsController < Devise::RegistrationsController
  def create
    # super
    if params[:type] == "Volunteer"
      @user = Volunteer.create(params[:user])
    else
      @user = Sponsor.create(params[:user])
    end
    session[:omniauth] = nil unless @user.new_record?
  end


  protected
  def after_sign_up_path_for(resource)
    '/'
  end

  def after_sign_in_path_for(resource)
    '/'
  end

  private
  def build_resource(*args)
    super
    if session[:omniauth]
      @user.apply_omniauth(session[:omniauth])
      @user.valid?
    end
  end
end
