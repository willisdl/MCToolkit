class MctsController < ApplicationController
  before_filter :admin_user, :authenticate_mct!, :except => [:new]
  before_action :set_mct, only: [:show, :edit, :update, :destroy]

  # GET /mcts
  # GET /mcts.json
  def index
    @mcts = Mct.all
  end

  # GET /mcts/1
  # GET /mcts/1.json
  def show
  end

  # GET /mcts/new
  def new
    @mct = Mct.new
    @dropdown_options = Role.all
  end

  # GET /mcts/1/edit
  def edit
    @dropdown_options = Role.all
  end

  # POST /mcts
  # POST /mcts.json
  def create
    @mct = Mct.new(mct_params)

    respond_to do |format|
      if @mct.save
        format.html { redirect_to @home, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mct }
      else
        format.html { render action: 'new' }
        format.json { render json: @mct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcts/1
  # PATCH/PUT /mcts/1.json
  def update
    if mct_params[:password].blank?
      mct_params.delete(:password)
      mct_params.delete(:password_confirmation)
    end

    successfully_updated = if needs_password?(@mct, mct_params)
                             @mct.update(mct_params)
                           else
                             @mct.update_without_password(mct_params)
                           end
    respond_to do |format|
      # params[:mct].delete(:current_password)
      if successfully_updated
      # if @mct.update_without_password(mct_params)
        format.html { redirect_to @mct, notice: 'Mct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcts/1
  # DELETE /mcts/1.json
  def destroy
    @mct.destroy
    respond_to do |format|
      format.html { redirect_to mcts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mct
      @mct = Mct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mct_params
      #params[:mct]
      params.require(:mct).permit(:email, :lastname, :firstname, :rank, :role)
    end

    # https://github.com/plataformatec/devise/wiki/How-To%3a-Allow-users-to-edit-their-account-without-providing-a-password
    def needs_password?(mct, params)
      params[:password].present?
    end

    def admin_user
      if current_mct.role != 'admin'
        redirect_to homes_path
      end
    end
end
