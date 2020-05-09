require "application_system_test_case"

class GamesetsTest < ApplicationSystemTestCase
  setup do
    @gameset = gamesets(:one)
  end

  test "visiting the index" do
    visit gamesets_url
    assert_selector "h1", text: "Gamesets"
  end

  test "creating a Gameset" do
    visit gamesets_url
    click_on "New Gameset"

    fill_in "Game", with: @gameset.game_id
    fill_in "Title", with: @gameset.title
    click_on "Create Gameset"

    assert_text "Gameset was successfully created"
    click_on "Back"
  end

  test "updating a Gameset" do
    visit gamesets_url
    click_on "Edit", match: :first

    fill_in "Game", with: @gameset.game_id
    fill_in "Title", with: @gameset.title
    click_on "Update Gameset"

    assert_text "Gameset was successfully updated"
    click_on "Back"
  end

  test "destroying a Gameset" do
    visit gamesets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gameset was successfully destroyed"
  end
end
