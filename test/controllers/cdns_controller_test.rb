require 'test_helper'

class CdnsControllerTest < ActionController::TestCase
  setup do
    @cdn = cdns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cdns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cdn" do
    assert_difference('Cdn.count') do
      post :create, cdn: { email: @cdn.email, name: @cdn.name }
    end

    assert_redirected_to cdn_path(assigns(:cdn))
  end

  test "should show cdn" do
    get :show, id: @cdn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cdn
    assert_response :success
  end

  test "should update cdn" do
    patch :update, id: @cdn, cdn: { email: @cdn.email, name: @cdn.name }
    assert_redirected_to cdn_path(assigns(:cdn))
  end

  test "should destroy cdn" do
    assert_difference('Cdn.count', -1) do
      delete :destroy, id: @cdn
    end

    assert_redirected_to cdns_path
  end
end
