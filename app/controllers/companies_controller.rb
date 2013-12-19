class CompaniesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index

  end

  def show
  end

  def create
    if current_user.type == "Volunteer"
      @company = Company.create(params[:company])
      @company.type = "For Profit"
    else
      @company.type = "Non Profit"
    end
    if @company.save?
      redirect_to root_path
    else
      new_company_path
    end
  end

  def update
  end

  def delete
  end

  def new
    @company = Company.new
  end
end
