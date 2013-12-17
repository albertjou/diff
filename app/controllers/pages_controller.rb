class PagesController < ApplicationController

  def home # Shows all the tasks
    @tasks = Task.all
  end

end