require 'test_helper'

class NewProjectsControllerTest < ActionController::TestCase
  setup do
    @new_project = new_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_project" do
    assert_difference('NewProject.count') do
      post :create, new_project: {  }
    end

    assert_redirected_to new_project_path(assigns(:new_project))
  end

  test "should show new_project" do
    get :show, id: @new_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_project
    assert_response :success
  end

  test "should update new_project" do
    put :update, id: @new_project, new_project: {  }
    assert_redirected_to new_project_path(assigns(:new_project))
  end

  test "should destroy new_project" do
    assert_difference('NewProject.count', -1) do
      delete :destroy, id: @new_project
    end

    assert_redirected_to new_projects_path
  end
end
