class TravelInfosController < ApplicationController
  before_action :set_travel_info, only: [:show, :edit, :update, :destroy]

  # GET /travel_infos
  # GET /travel_infos.json
  def index
    @travel_infos = TravelInfo.all
  end

  # GET /travel_infos/1
  # GET /travel_infos/1.json
  def show
  end

  # GET /travel_infos/new
  def new
    @travel_info = TravelInfo.new
  end

  # GET /travel_infos/1/edit
  def edit
  end

  # POST /travel_infos
  # POST /travel_infos.json
  def create
    @travel_info = TravelInfo.new(travel_info_params)

    respond_to do |format|
      if @travel_info.save
        format.html { redirect_to @travel_info, notice: 'Travel info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @travel_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @travel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_infos/1
  # PATCH/PUT /travel_infos/1.json
  def update
    respond_to do |format|
      if @travel_info.update(travel_info_params)
        format.html { redirect_to @travel_info, notice: 'Travel info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @travel_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_infos/1
  # DELETE /travel_infos/1.json
  def destroy
    @travel_info.destroy
    respond_to do |format|
      format.html { redirect_to travel_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_info
      @travel_info = TravelInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_info_params
      params[:travel_info]
    end
end
