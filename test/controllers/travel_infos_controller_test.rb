require 'test_helper'

class TravelInfosControllerTest < ActionController::TestCase
  setup do
    @travel_info = travel_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_info" do
    assert_difference('TravelInfo.count') do
      post :create, travel_info: {  }
    end

    assert_redirected_to travel_info_path(assigns(:travel_info))
  end

  test "should show travel_info" do
    get :show, id: @travel_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_info
    assert_response :success
  end

  test "should update travel_info" do
    patch :update, id: @travel_info, travel_info: {  }
    assert_redirected_to travel_info_path(assigns(:travel_info))
  end

  test "should destroy travel_info" do
    assert_difference('TravelInfo.count', -1) do
      delete :destroy, id: @travel_info
    end

    assert_redirected_to travel_infos_path
  end
end
