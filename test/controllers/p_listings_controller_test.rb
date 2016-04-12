require 'test_helper'

class PListingsControllerTest < ActionController::TestCase
  setup do
    @p_listing = p_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_listing" do
    assert_difference('PListing.count') do
      post :create, p_listing: { bathroom: @p_listing.bathroom, city_place: @p_listing.city_place, date: @p_listing.date, description: @p_listing.description, display_type: @p_listing.display_type, flat_size: @p_listing.flat_size, house_no: @p_listing.house_no, latitude: @p_listing.latitude, longitude: @p_listing.longitude, property_type: @p_listing.property_type, room: @p_listing.room, street: @p_listing.street, title: @p_listing.title, total_rent: @p_listing.total_rent, use_type: @p_listing.use_type, zip_code: @p_listing.zip_code }
    end

    assert_redirected_to p_listing_path(assigns(:p_listing))
  end

  test "should show p_listing" do
    get :show, id: @p_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_listing
    assert_response :success
  end

  test "should update p_listing" do
    patch :update, id: @p_listing, p_listing: { bathroom: @p_listing.bathroom, city_place: @p_listing.city_place, date: @p_listing.date, description: @p_listing.description, display_type: @p_listing.display_type, flat_size: @p_listing.flat_size, house_no: @p_listing.house_no, latitude: @p_listing.latitude, longitude: @p_listing.longitude, property_type: @p_listing.property_type, room: @p_listing.room, street: @p_listing.street, title: @p_listing.title, total_rent: @p_listing.total_rent, use_type: @p_listing.use_type, zip_code: @p_listing.zip_code }
    assert_redirected_to p_listing_path(assigns(:p_listing))
  end

  test "should destroy p_listing" do
    assert_difference('PListing.count', -1) do
      delete :destroy, id: @p_listing
    end

    assert_redirected_to p_listings_path
  end
end
