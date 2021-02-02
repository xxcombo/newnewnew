require 'test_helper'

class DomitoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @domitory = domitories(:one)
  end

  test "should get index" do
    get domitories_url
    assert_response :success
  end

  test "should get new" do
    get new_domitory_url
    assert_response :success
  end

  test "should create domitory" do
    assert_difference('Domitory.count') do
      post domitories_url, params: { domitory: { description: @domitory.description, title: @domitory.title } }
    end

    assert_redirected_to domitory_url(Domitory.last)
  end

  test "should show domitory" do
    get domitory_url(@domitory)
    assert_response :success
  end

  test "should get edit" do
    get edit_domitory_url(@domitory)
    assert_response :success
  end

  test "should update domitory" do
    patch domitory_url(@domitory), params: { domitory: { description: @domitory.description, title: @domitory.title } }
    assert_redirected_to domitory_url(@domitory)
  end

  test "should destroy domitory" do
    assert_difference('Domitory.count', -1) do
      delete domitory_url(@domitory)
    end

    assert_redirected_to domitories_url
  end
end
