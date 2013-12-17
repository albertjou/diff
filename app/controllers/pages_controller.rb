class PagesController < ApplicationController

  def home # Shows all the tasks
    @tasks = Task.all
    @non_profits = NonProfit.all
    @companies = Company.all
  end

end