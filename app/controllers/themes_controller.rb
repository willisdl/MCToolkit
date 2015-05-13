class ThemesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @exercise = Exercise.find_by(name: CurrentExercise.first.name)
    @themes = @exercise.themes
    respond_with(@themes)
  end

  def show
    respond_with(@theme)
  end

  def new
    @theme = Theme.new
    respond_with(@theme)
  end

  def edit
    session[:return_to] ||= request.referer
  end

  def create
    update
    #@theme = Theme.new(theme_params)
    #respond_to do |format|
    #  if @theme.save
    #    format.html { redirect_to @theme, notice: 'Theme was successfully created.' }
    #    format.json { render action: 'show', status: :created, location: @theme }
    #  else
    #    format.html { render action: 'new' }
    #    format.json { render json: @theme.errors, status: :unprocessable_entity }
    #  end
    #end
    # @theme.save
    # respond_with(@theme)
  end

  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to themes_url, notice: 'Exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
    # @theme.update(theme_params)
    # respond_with(@theme)
  end

  def destroy
    @theme.destroy
    respond_to do |format|
      format.html { redirect_to themes_url }
      format.json { head :no_content }
    end
    # respond_with(@theme)
  end

  private
    def set_theme
      @themes = Exercise.find_by(name: CurrentExercise.first.name).themes
      # @theme = Theme.find(params[:id])
    end

    def theme_params
      params.require(:theme).permit(:name, :notes)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find_by(name: CurrentExercise.first.name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def exercise_params
    #  params.require(:exercise).permit(:name, :start, :end)
    #end

    def exercise_params
      params.require(:exercise).permit(:name, :start, :end, units_attributes: [:id, :unit_name, :_destroy, ctos_attributes: [:id, :cto, :_destroy]], themes_attributes: [:id, :name, :notes, :_destroy])
    end
end
