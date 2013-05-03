require 'test_helper'

class BigpostsControllerTest < ActionController::TestCase
  setup do
    @bigpost = bigposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bigposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bigpost" do
    assert_difference('Bigpost.count') do
      post :create, bigpost: { content: @bigpost.content, user_id: @bigpost.user_id }
    end

    assert_redirected_to bigpost_path(assigns(:bigpost))
  end

  test "should show bigpost" do
    get :show, id: @bigpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bigpost
    assert_response :success
  end

  test "should update bigpost" do
    put :update, id: @bigpost, bigpost: { content: @bigpost.content, user_id: @bigpost.user_id }
    assert_redirected_to bigpost_path(assigns(:bigpost))
  end

  test "should destroy bigpost" do
    assert_difference('Bigpost.count', -1) do
      delete :destroy, id: @bigpost
    end

    assert_redirected_to bigposts_path
  end
end
