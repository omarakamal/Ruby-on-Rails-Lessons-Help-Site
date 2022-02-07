require "application_system_test_case"

class TipsTest < ApplicationSystemTestCase
  setup do
    @tip = tips(:one)
  end

  test "visiting the index" do
    visit tips_url
    assert_selector "h1", text: "Tips"
  end

  test "should create tip" do
    visit tips_url
    click_on "New tip"

    fill_in "Creator", with: @tip.creator
    fill_in "Description", with: @tip.description
    fill_in "Helpful links", with: @tip.helpful_links
    fill_in "Lesson name", with: @tip.lesson_name
    click_on "Create Tip"

    assert_text "Tip was successfully created"
    click_on "Back"
  end

  test "should update Tip" do
    visit tip_url(@tip)
    click_on "Edit this tip", match: :first

    fill_in "Creator", with: @tip.creator
    fill_in "Description", with: @tip.description
    fill_in "Helpful links", with: @tip.helpful_links
    fill_in "Lesson name", with: @tip.lesson_name
    click_on "Update Tip"

    assert_text "Tip was successfully updated"
    click_on "Back"
  end

  test "should destroy Tip" do
    visit tip_url(@tip)
    click_on "Destroy this tip", match: :first

    assert_text "Tip was successfully destroyed"
  end
end
