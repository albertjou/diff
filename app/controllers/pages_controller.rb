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

end