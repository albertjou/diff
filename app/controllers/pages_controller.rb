class PagesController < ApplicationController
  def home # Shows all the tasks
    @tasks = Task.order("id DESC").all
    @non_profits = NonProfit.all
    @for_profits = ForProfit.all
    @competencies = []
    Competency.all.each { |x| @competencies << x if (x.tasks.length > 0) }
  end

  def sign_in

  end

  def sign_up

  end

  def domain
    domain = params[:domain]
  end

  def competencies
    @competencies = Competency.all
    json = Jsonify::Builder.new(:format => :pretty)
    @competencies.each do |x|
      json << {:value => x.id, :text => x.name }
    # json.competencies(@competencies) do |competency|
    #   json.value competency.id
    #   json.name competency.name
    end
    a = json.compile!
    render json: a
  end

  def company
  end

  def map
    @task = Task.where("latitude is not null").last()
    @nearbytasks = @task.nearbys(20)
    binding.pry
  end

end