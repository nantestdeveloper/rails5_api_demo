require 'test_helper'

class RentalPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_property = rental_properties(:one)
  end

  test "should get index" do
    get rental_properties_url, as: :json
    assert_response :success
  end

  test "should create rental_property" do
    assert_difference('RentalProperty.count') do
      post rental_properties_url, params: { rental_property: { address: @rental_property.address, bathrooms: @rental_property.bathrooms, name: @rental_property.name, price_cents: @rental_property.price_cents, rooms: @rental_property.rooms } }, as: :json
    end

    assert_response 201
  end

  test "should show rental_property" do
    get rental_property_url(@rental_property), as: :json
    assert_response :success
  end

  test "should update rental_property" do
    patch rental_property_url(@rental_property), params: { rental_property: { address: @rental_property.address, bathrooms: @rental_property.bathrooms, name: @rental_property.name, price_cents: @rental_property.price_cents, rooms: @rental_property.rooms } }, as: :json
    assert_response 200
  end

  test "should destroy rental_property" do
    assert_difference('RentalProperty.count', -1) do
      delete rental_property_url(@rental_property), as: :json
    end

    assert_response 204
  end
end
