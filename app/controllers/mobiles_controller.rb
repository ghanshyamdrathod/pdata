class MobilesController < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  before_filter :authorize_person, except:[:fetch_data]

  def index
    @mobiles = Mobile.all
  end

  # GET /details/new
  def new
    @mobile = Mobile.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create
    @detail = Mobile.new(mobile_params)
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
    mobile_details = Mobile.find_by_imei(params[:imei])

    mobile_details = mobile_details.nil? ? {} : mobile_details
    render :json =>  mobile_details
  end

  private
    def set_detail
      @mobile = Mobile.find(params[:id])
    end

    def mobile_params
      params.require(:mobile).permit(:user_id, :case_no, :imei, :stolen_date, :stolen_place, :last_sim_used, :remarks, :cr_no, :image, :company)
    end
end