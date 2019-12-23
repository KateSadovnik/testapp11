require "application_system_test_case"

class Microposts1sTest < ApplicationSystemTestCase
  setup do
    @microposts1 = microposts1s(:one)
  end

  test "visiting the index" do
    visit microposts1s_url
    assert_selector "h1", text: "Microposts1s"
  end

  test "creating a Microposts1" do
    visit microposts1s_url
    click_on "New Microposts1"

    fill_in "Content", with: @microposts1.content
    fill_in "User", with: @microposts1.user_id
    click_on "Create Microposts1"

    assert_text "Microposts1 was successfully created"
    click_on "Back"
  end

  test "updating a Microposts1" do
    visit microposts1s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @microposts1.content
    fill_in "User", with: @microposts1.user_id
    click_on "Update Microposts1"

    assert_text "Microposts1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Microposts1" do
    visit microposts1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Microposts1 was successfully destroyed"
  end
end
