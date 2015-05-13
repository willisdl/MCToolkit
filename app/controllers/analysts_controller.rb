class AnalystsController < ApplicationController
  before_action :set_analyst, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @exercise = Exercise.find_by(name: CurrentExercise.first.name)
    @themes = @exercise.themes
    @analysts = Analyst.all
    respond_with(@analysts)
  end

  def show
    respond_with(@analyst)
  end

  def new
    @analyst = Analyst.new
    respond_with(@analyst)
  end

  def edit
  end

  def create
    @analyst = Analyst.new(analyst_params)
    @analyst.save
    respond_with(@analyst)
  end

  def update
    @analyst.update(analyst_params)
    respond_with(@analyst)
  end

  def destroy
    @analyst.destroy
    respond_with(@analyst)
  end

  private
    def set_analyst
      @analyst = Analyst.find(params[:id])
    end

    def analyst_params
      params[:analyst]
    end
end
