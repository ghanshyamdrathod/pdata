require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, detail: { address: @detail.address, avatar: @detail.avatar, crime_details: @detail.crime_details, crn: @detail.crn, last_arrest: @detail.last_arrest, name: @detail.name, police_station: @detail.police_station, record_type: @detail.record_type, sections: @detail.sections }
    end

    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should show detail" do
    get :show, id: @detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail
    assert_response :success
  end

  test "should update detail" do
    patch :update, id: @detail, detail: { address: @detail.address, avatar: @detail.avatar, crime_details: @detail.crime_details, crn: @detail.crn, last_arrest: @detail.last_arrest, name: @detail.name, police_station: @detail.police_station, record_type: @detail.record_type, sections: @detail.sections }
    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete :destroy, id: @detail
    end

    assert_redirected_to details_path
  end
end
