require "test_helper"

class PrefecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prefecture = prefectures(:one)
  end

  test "should get index" do
    get prefectures_url, as: :json
    assert_response :success
  end

  test "should create prefecture" do
    assert_difference('Prefecture.count') do
      post prefectures_url, params: { prefecture: { kana: @prefecture.kana, name: @prefecture.name, romaji: @prefecture.romaji } }, as: :json
    end

    assert_response 201
  end

  test "should show prefecture" do
    get prefecture_url(@prefecture), as: :json
    assert_response :success
  end

  test "should update prefecture" do
    patch prefecture_url(@prefecture), params: { prefecture: { kana: @prefecture.kana, name: @prefecture.name, romaji: @prefecture.romaji } }, as: :json
    assert_response 200
  end

  test "should destroy prefecture" do
    assert_difference('Prefecture.count', -1) do
      delete prefecture_url(@prefecture), as: :json
    end

    assert_response 204
  end
end
