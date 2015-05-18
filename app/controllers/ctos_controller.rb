class CtosController < ApplicationController
  before_action :set_exercise

  respond_to :html

  # GET /ctos
  # GET /ctos.json
  def index
    respond_with(@exercise)
    session[:return_to] ||= request.referer
  end

  # GET /ctos/1
  # GET /ctos/1.json
  def show
  end

  # GET /ctos/new
  def new
    @cto = Cto.new
  end

  # GET /ctos/1/edit
  def edit
  end

  # POST /ctos
  # POST /ctos.json
  def create
    @cto = Cto.new(cto_params)

    respond_to do |format|
      if @cto.save
        format.html { redirect_to @cto, notice: 'Cto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cto }
      else
        format.html { render action: 'new' }
        format.json { render json: @cto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ctos/1
  # PATCH/PUT /ctos/1.json
  def update
    respond_to do |format|
      if @cto.update(cto_params)
        format.html { redirect_to @cto, notice: 'Cto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ctos/1
  # DELETE /ctos/1.json
  def destroy
    @cto.destroy
    respond_to do |format|
      format.html { redirect_to ctos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cto
      @cto = Cto.find(params[:id])
    end

    def set_exercise
      @exercise = Exercise.find_by(name: CurrentExercise.first.name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cto_params
      params.require(:cto).permit(:cto)
    end
end
