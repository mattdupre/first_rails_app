require 'test_helper'

class SecondRailsAppsControllerTest < ActionController::TestCase
  setup do
    @second_rails_app = second_rails_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_rails_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_rails_app" do
    assert_difference('SecondRailsApp.count') do
      post :create, second_rails_app: {  }
    end

    assert_redirected_to second_rails_app_path(assigns(:second_rails_app))
  end

  test "should show second_rails_app" do
    get :show, id: @second_rails_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_rails_app
    assert_response :success
  end

  test "should update second_rails_app" do
    put :update, id: @second_rails_app, second_rails_app: {  }
    assert_redirected_to second_rails_app_path(assigns(:second_rails_app))
  end

  test "should destroy second_rails_app" do
    assert_difference('SecondRailsApp.count', -1) do
      delete :destroy, id: @second_rails_app
    end

    assert_redirected_to second_rails_apps_path
  end
end
