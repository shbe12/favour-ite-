require "test_helper"

class FavoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favour = favours(:one)
  end

  test "should get index" do
    get favours_url, as: :json
    assert_response :success
  end

  test "should create favour" do
    assert_difference("Favour.count") do
      post favours_url, params: { favour: { description: @favour.description, duration: @favour.duration, location: @favour.location, price: @favour.price, title: @favour.title } }, as: :json
    end

    assert_response :created
  end

  test "should show favour" do
    get favour_url(@favour), as: :json
    assert_response :success
  end

  test "should update favour" do
    patch favour_url(@favour), params: { favour: { description: @favour.description, duration: @favour.duration, location: @favour.location, price: @favour.price, title: @favour.title } }, as: :json
    assert_response :success
  end

  test "should destroy favour" do
    assert_difference("Favour.count", -1) do
      delete favour_url(@favour), as: :json
    end

    assert_response :no_content
  end
end
