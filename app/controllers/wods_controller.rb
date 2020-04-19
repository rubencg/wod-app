class WodsController < ApplicationController
  before_action :set_wod, only: [:show, :edit, :update, :destroy]

  # GET /wods
  # GET /wods.json
  def index
    if params[:search]
      @wods = Wod.main_wods
      unless search_params[:name].blank?
        @wods = @wods.where("lower(title) LIKE '%#{search_params[:name].downcase}%'")
      end
      unless search_params[:category_id].blank?
        @wods = @wods.where(category_id: search_params[:category_id])
      end
      unless search_params[:week_name].blank?
        @wods = @wods.where("lower(week_name) LIKE '%#{search_params[:week_name].downcase}%'")
      end
    else
      @wods = Wod.main_wods
    end
  end

  def filter
  end

  # GET /wods/1
  # GET /wods/1.json
  def show
  end

  # GET /wods/new
  def new
    @wod = Wod.new
  end

  # GET /wods/1/edit
  def edit
  end

  # POST /wods
  # POST /wods.json
  def create
    @wod = Wod.new(wod_params.merge(is_main: true))
    respond_to do |format|
      if @wod.save
        format.html { redirect_to @wod, notice: 'Wod was successfully created.' }
        format.json { render :show, status: :created, location: @wod }
      else
        format.html { render :new }
        format.json { render json: @wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wods/1
  # PATCH/PUT /wods/1.json
  def update
    respond_to do |format|
      if @wod.update(wod_params)
        format.html { redirect_to @wod, notice: 'Wod was successfully updated.' }
        format.json { render :show, status: :ok, location: @wod }
      else
        format.html { render :edit }
        format.json { render json: @wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wods/1
  # DELETE /wods/1.json
  def destroy
    @wod.destroy
    respond_to do |format|
      format.html { redirect_to wods_url, notice: 'Wod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wod
    @wod = Wod.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wod_params
    params.require(:wod).permit(:title, :notes, :description, :category_id)
  end

  def search_params
    params.require(:search).permit(:name, :category_id, :week_name)
  end
end
