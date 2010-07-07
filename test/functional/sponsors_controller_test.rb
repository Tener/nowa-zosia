require 'test_helper'

class SponsorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsor" do
    assert_difference('Sponsor.count') do
      post :create, :sponsor => { }
    end

    assert_redirected_to sponsor_path(assigns(:sponsor))
  end

  test "should show sponsor" do
    get :show, :id => sponsors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sponsors(:one).to_param
    assert_response :success
  end

  test "should update sponsor" do
    put :update, :id => sponsors(:one).to_param, :sponsor => { }
    assert_redirected_to sponsor_path(assigns(:sponsor))
  end

  test "should destroy sponsor" do
    assert_difference('Sponsor.count', -1) do
      delete :destroy, :id => sponsors(:one).to_param
    end

    assert_redirected_to sponsors_path
  end
end
