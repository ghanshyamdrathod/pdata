require 'test_helper'

class LaptopsControllerTest < ActionController::TestCase
  setup do
    @laptop = laptops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laptops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laptop" do
    assert_difference('Laptop.count') do
      post :create, laptop: { case_no: @laptop.case_no, company: @laptop.company, cr_no: @laptop.cr_no, image: @laptop.image, mac_id: @laptop.mac_id, model_no: @laptop.model_no, remarks: @laptop.remarks, serial_no: @laptop.serial_no, stolen_date: @laptop.stolen_date, stolen_place: @laptop.stolen_place, user_id: @laptop.user_id }
    end

    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should show laptop" do
    get :show, id: @laptop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laptop
    assert_response :success
  end

  test "should update laptop" do
    patch :update, id: @laptop, laptop: { case_no: @laptop.case_no, company: @laptop.company, cr_no: @laptop.cr_no, image: @laptop.image, mac_id: @laptop.mac_id, model_no: @laptop.model_no, remarks: @laptop.remarks, serial_no: @laptop.serial_no, stolen_date: @laptop.stolen_date, stolen_place: @laptop.stolen_place, user_id: @laptop.user_id }
    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should destroy laptop" do
    assert_difference('Laptop.count', -1) do
      delete :destroy, id: @laptop
    end

    assert_redirected_to laptops_path
  end
end
