require 'test_helper'

class MiningTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mining_type = mining_types(:one)
  end

  test "should get index" do
    get mining_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mining_type_url
    assert_response :success
  end

  test "should create mining_type" do
    assert_difference('MiningType.count') do
      post mining_types_url, params: { mining_type: { acronym: @mining_type.acronym, description: @mining_type.description } }
    end

    assert_redirected_to mining_type_url(MiningType.last)
  end

  test "should show mining_type" do
    get mining_type_url(@mining_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_mining_type_url(@mining_type)
    assert_response :success
  end

  test "should update mining_type" do
    patch mining_type_url(@mining_type), params: { mining_type: { acronym: @mining_type.acronym, description: @mining_type.description } }
    assert_redirected_to mining_type_url(@mining_type)
  end

  test "should destroy mining_type" do
    assert_difference('MiningType.count', -1) do
      delete mining_type_url(@mining_type)
    end

    assert_redirected_to mining_types_url
  end
end
