require 'test_helper'

class PdetailsControllerTest < ActionController::TestCase
  setup do
    @pdetail = pdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdetail" do
    assert_difference('Pdetail.count') do
      post :create, pdetail: { ad_type: @pdetail.ad_type, add_date: @pdetail.add_date, area: @pdetail.area, bathroom: @pdetail.bathroom, bedroom: @pdetail.bedroom, city: @pdetail.city, location: @pdetail.location, owner_name: @pdetail.owner_name, price: @pdetail.price, property_name: @pdetail.property_name, property_status: @pdetail.property_status, property_type: @pdetail.property_type, rent: @pdetail.rent, size: @pdetail.size }
    end

    assert_redirected_to pdetail_path(assigns(:pdetail))
  end

  test "should show pdetail" do
    get :show, id: @pdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdetail
    assert_response :success
  end

  test "should update pdetail" do
    patch :update, id: @pdetail, pdetail: { ad_type: @pdetail.ad_type, add_date: @pdetail.add_date, area: @pdetail.area, bathroom: @pdetail.bathroom, bedroom: @pdetail.bedroom, city: @pdetail.city, location: @pdetail.location, owner_name: @pdetail.owner_name, price: @pdetail.price, property_name: @pdetail.property_name, property_status: @pdetail.property_status, property_type: @pdetail.property_type, rent: @pdetail.rent, size: @pdetail.size }
    assert_redirected_to pdetail_path(assigns(:pdetail))
  end

  test "should destroy pdetail" do
    assert_difference('Pdetail.count', -1) do
      delete :destroy, id: @pdetail
    end

    assert_redirected_to pdetails_path
  end
end
