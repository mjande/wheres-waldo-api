require "test_helper"

class PhotographsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photograph = photographs(:one)
  end

  test "should get index" do
    get photographs_url, as: :json
    assert_response :success
  end

  test "should create photograph" do
    assert_difference("Photograph.count") do
      post photographs_url, params: { photograph: { name: @photograph.name } }, as: :json
    end

    assert_response :created
  end

  test "should show photograph" do
    get photograph_url(@photograph), as: :json
    assert_response :success
  end

  test "should update photograph" do
    patch photograph_url(@photograph), params: { photograph: { name: @photograph.name } }, as: :json
    assert_response :success
  end

  test "should destroy photograph" do
    assert_difference("Photograph.count", -1) do
      delete photograph_url(@photograph), as: :json
    end

    assert_response :no_content
  end
end
