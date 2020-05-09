class GamesetsController < ApplicationController
  before_action :set_gameset, only: [:show, :edit, :update, :destroy]

  # GET /gamesets
  # GET /gamesets.json
  def index
    @gamesets = Gameset.all
  end

  # GET /gamesets/1
  # GET /gamesets/1.json
  def show
  end

  # GET /gamesets/new
  def new
    @gameset = Gameset.new
  end

  # GET /gamesets/1/edit
  def edit
  end

  # POST /gamesets
  # POST /gamesets.json
  def create
    @gameset = Gameset.new(gameset_params)

    respond_to do |format|
      if @gameset.save
        format.html { redirect_to @gameset, notice: 'Gameset was successfully created.' }
        format.json { render :show, status: :created, location: @gameset }
      else
        format.html { render :new }
        format.json { render json: @gameset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamesets/1
  # PATCH/PUT /gamesets/1.json
  def update
    respond_to do |format|
      if @gameset.update(gameset_params)
        format.html { redirect_to @gameset, notice: 'Gameset was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameset }
      else
        format.html { render :edit }
        format.json { render json: @gameset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamesets/1
  # DELETE /gamesets/1.json
  def destroy
    @gameset.destroy
    respond_to do |format|
      format.html { redirect_to gamesets_url, notice: 'Gameset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameset
      @gameset = Gameset.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gameset_params
      params.require(:gameset).permit(:title, :game_id)
    end
end
