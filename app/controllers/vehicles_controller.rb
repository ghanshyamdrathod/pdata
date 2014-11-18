class VehiclesController  < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  before_filter :authorize_person, except:[:fetch_data]

  def index
    @vehicles = Vehicle.all
  end

  # GET /details/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create
    @detail = Vehicle.new(vehicle_params)
    respond_to do |format|
      if @detail.save
        # raise @detail.inspect
        format.html { redirect_to @detail, notice: 'Laptop Entry was successfully created.' }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def fetch_data

    unless params[:mv_no].blank?
      rto_details = Vehicle.find_by_mv_no(params[:mv_no])
    end
    
    unless params[:chasis_no].blank?
      rto_details = Vehicle.find_by_chasis_no(params[:chasis_no])
    end

    unless params[:engine_no].blank?
      rto_details = Vehicle.find_by_engine_no(params[:engine_no])
    end

    rto_details = rto_details.nil? ? {} : rto_details
    render :json => rto_details

  end

  private
    
    def set_detail
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(:user_id, :case_no, :mv_no, :engine_no, :chasis_no, :company, :stolen_date, :stolen_place, :remarks, :cr_no, :image)
    end
end

