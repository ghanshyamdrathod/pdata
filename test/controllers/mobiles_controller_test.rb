require 'test_helper'

class MobilesControllerTest < ActionController::TestCase
  setup do
    @mobile = mobiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobile" do
    assert_difference('Mobile.count') do
      post :create, mobile: { case_no: @mobile.case_no, company: @mobile.company, cr_no: @mobile.cr_no, image: @mobile.image, imei: @mobile.imei, last_sim_used: @mobile.last_sim_used, remarks: @mobile.remarks, stolen_date: @mobile.stolen_date, stolen_place: @mobile.stolen_place, user_id: @mobile.user_id }
    end

    assert_redirected_to mobile_path(assigns(:mobile))
  end

  test "should show mobile" do
    get :show, id: @mobile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mobile
    assert_response :success
  end

  test "should update mobile" do
    patch :update, id: @mobile, mobile: { case_no: @mobile.case_no, company: @mobile.company, cr_no: @mobile.cr_no, image: @mobile.image, imei: @mobile.imei, last_sim_used: @mobile.last_sim_used, remarks: @mobile.remarks, stolen_date: @mobile.stolen_date, stolen_place: @mobile.stolen_place, user_id: @mobile.user_id }
    assert_redirected_to mobile_path(assigns(:mobile))
  end

  test "should destroy mobile" do
    assert_difference('Mobile.count', -1) do
      delete :destroy, id: @mobile
    end

    assert_redirected_to mobiles_path
  end
end
