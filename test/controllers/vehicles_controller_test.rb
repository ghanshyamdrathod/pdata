require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { case_no: @vehicle.case_no, chasis_no: @vehicle.chasis_no, company: @vehicle.company, cr_no: @vehicle.cr_no, engine_no: @vehicle.engine_no, image: @vehicle.image, mv_no: @vehicle.mv_no, remarks: @vehicle.remarks, stolen_date: @vehicle.stolen_date, stolen_place: @vehicle.stolen_place, user_id: @vehicle.user_id }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { case_no: @vehicle.case_no, chasis_no: @vehicle.chasis_no, company: @vehicle.company, cr_no: @vehicle.cr_no, engine_no: @vehicle.engine_no, image: @vehicle.image, mv_no: @vehicle.mv_no, remarks: @vehicle.remarks, stolen_date: @vehicle.stolen_date, stolen_place: @vehicle.stolen_place, user_id: @vehicle.user_id }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
