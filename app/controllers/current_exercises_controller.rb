class CurrentExercisesController < ApplicationController
  before_action :set_current_exercise, only: [:show, :edit, :update, :destroy]

  # GET /current_exercises
  # GET /current_exercises.json
  def index
    @current_exercises = CurrentExercise.all
	@ex_list = Array.new
	Exercise.all.each do |ex|
	  @ex_list.push(ex.name)
	end
  end

  # GET /current_exercises/1
  # GET /current_exercises/1.json
  def show
  end

  # GET /current_exercises/new
  def new
    @current_exercise = CurrentExercise.new
  end

  # GET /current_exercises/1/edit
  def edit
  end

  # POST /current_exercises
  # POST /current_exercises.json
  def create
    @current_exercise = CurrentExercise.new(current_exercise_params)

    respond_to do |format|
      if @current_exercise.save
        format.html { redirect_to @current_exercise, notice: 'Current exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @current_exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @current_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_exercises/1
  # PATCH/PUT /current_exercises/1.json
  def update
    respond_to do |format|
      if @current_exercise.update(current_exercise_params)
        format.html { redirect_to @current_exercise, notice: 'Current exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @current_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_exercises/1
  # DELETE /current_exercises/1.json
  def destroy
    @current_exercise.destroy
    respond_to do |format|
      format.html { redirect_to current_exercises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_exercise
      @current_exercise = CurrentExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_exercise_params
      params.require(:current_exercise).permit(:name)
    end
end
