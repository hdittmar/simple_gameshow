require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    fill_in "Correct guess", with: @question.correct_guess
    fill_in "Correct option", with: @question.correct_option
    check "Done" if @question.done
    fill_in "Games", with: @question.games_id
    fill_in "Incorrect option 1", with: @question.incorrect_option_1
    fill_in "Incorrect option 2", with: @question.incorrect_option_2
    fill_in "Incorrect option 3", with: @question.incorrect_option_3
    fill_in "Question type", with: @question.question_type
    fill_in "Title", with: @question.title
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    fill_in "Correct guess", with: @question.correct_guess
    fill_in "Correct option", with: @question.correct_option
    check "Done" if @question.done
    fill_in "Games", with: @question.games_id
    fill_in "Incorrect option 1", with: @question.incorrect_option_1
    fill_in "Incorrect option 2", with: @question.incorrect_option_2
    fill_in "Incorrect option 3", with: @question.incorrect_option_3
    fill_in "Question type", with: @question.question_type
    fill_in "Title", with: @question.title
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
