class LaptopsController < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  before_filter :authorize_person, except:[:fetch_data]

  def index
    @laptops = Laptop.all
  end

  # GET /details/new
  def new
    @laptop = Laptop.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create
    @detail = Laptop.new(laptop_params)
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

    unless params[:serial_no].blank?
      laptop_details = Laptop.find_by_serial_no(params[:serial_no])
    end

    unless params[:mac_id].blank?
      laptop_details = Laptop.find_by_mac_id(params[:mac_id])
    end

    laptop_details = laptop_details.nil? ? {} : laptop_details
    render :json => laptop_details
  end


  private

    def set_detail
      @laptop = Laptop.find(params[:id])

    end

    def laptop_params
      params.require(:laptop).permit(:user_id, :case_no, :serial_no, :company, :model_no, :mac_id, :stolen_date, :stolen_place, :remarks, :cr_no, :image)
    end
end

