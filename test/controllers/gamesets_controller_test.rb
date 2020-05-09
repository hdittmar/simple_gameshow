require 'test_helper'

class GamesetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameset = gamesets(:one)
  end

  test "should get index" do
    get gamesets_url
    assert_response :success
  end

  test "should get new" do
    get new_gameset_url
    assert_response :success
  end

  test "should create gameset" do
    assert_difference('Gameset.count') do
      post gamesets_url, params: { gameset: { game_id: @gameset.game_id, title: @gameset.title } }
    end

    assert_redirected_to gameset_url(Gameset.last)
  end

  test "should show gameset" do
    get gameset_url(@gameset)
    assert_response :success
  end

  test "should get edit" do
    get edit_gameset_url(@gameset)
    assert_response :success
  end

  test "should update gameset" do
    patch gameset_url(@gameset), params: { gameset: { game_id: @gameset.game_id, title: @gameset.title } }
    assert_redirected_to gameset_url(@gameset)
  end

  test "should destroy gameset" do
    assert_difference('Gameset.count', -1) do
      delete gameset_url(@gameset)
    end

    assert_redirected_to gamesets_url
  end
end
