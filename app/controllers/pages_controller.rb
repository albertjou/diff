class PagesController < ApplicationController

  def home # Shows all the tasks
    @tasks = Task.order("id DESC").all
    @non_profits = NonProfit.all
    @companies = Company.all
  end

  def sign_in

  end

  def sign_up

  end

  def domain
    binding.pry
    domain = params[:domain]
  end

end