class BrewTypesController < ApplicationController
  before_action :set_brew_type, only: [:show, :edit, :update, :destroy]

  # GET /brew_types
  # GET /brew_types.json
  def index
    @brew_types = BrewType.all
  end

  # GET /brew_types/1
  # GET /brew_types/1.json
  def show
  end

  # GET /brew_types/new
  def new
    @brew_type = BrewType.new
  end

  # GET /brew_types/1/edit
  def edit
  end

  # POST /brew_types
  # POST /brew_types.json
  def create
    @brew_type = BrewType.new(brew_type_params)

    respond_to do |format|
      if @brew_type.save
        format.html { redirect_to @brew_type, notice: 'Brew type was successfully created.' }
        format.json { render :show, status: :created, location: @brew_type }
      else
        format.html { render :new }
        format.json { render json: @brew_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brew_types/1
  # PATCH/PUT /brew_types/1.json
  def update
    respond_to do |format|
      if @brew_type.update(brew_type_params)
        format.html { redirect_to @brew_type, notice: 'Brew type was successfully updated.' }
        format.json { render :show, status: :ok, location: @brew_type }
      else
        format.html { render :edit }
        format.json { render json: @brew_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brew_types/1
  # DELETE /brew_types/1.json
  def destroy
    @brew_type.destroy
    respond_to do |format|
      format.html { redirect_to brew_types_url, notice: 'Brew type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brew_type
      @brew_type = BrewType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brew_type_params
      params.require(:brew_type).permit(:name, :description)
    end
end
