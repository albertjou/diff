class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    if params[:type] == "Volunteer"
      resource.type = "Volunteer"
      resource.company = ForProfit.find_or_create_by_name(name: params[:company])
    else
      resource.type = "Sponsor"
      resource.company = NonProfit.find_or_create_by_name(name: params[:company])
    end
      resource.company.logo = params[:logo]
    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
    @user = resource
    session[:omniauth] = nil unless @user.new_record?
  end


  # protected
  # def after_sign_up_path_for(resource)
  #   '/'
  # end

  private
  def build_resource(*args)
    super
    if session[:omniauth]
      @user.apply_omniauth(session[:omniauth])
      @user.valid?
    end
  end
end
