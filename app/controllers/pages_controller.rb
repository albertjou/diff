class PagesController < ApplicationController

  def home # Shows all the tasks
    @tasks = Task.all
    @non_profits = NonProfit.all
    @companies = Company.all
  end

  def sign_in

  end

  def sign_up

  end

end