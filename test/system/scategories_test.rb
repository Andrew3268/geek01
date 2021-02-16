require "application_system_test_case"

class ScategoriesTest < ApplicationSystemTestCase
  setup do
    @scategory = scategories(:one)
  end

  test "visiting the index" do
    visit scategories_url
    assert_selector "h1", text: "Scategories"
  end

  test "creating a Scategory" do
    visit scategories_url
    click_on "New Scategory"

    fill_in "Cat title", with: @scategory.cat_title
    click_on "Create Scategory"

    assert_text "Scategory was successfully created"
    click_on "Back"
  end

  test "updating a Scategory" do
    visit scategories_url
    click_on "Edit", match: :first

    fill_in "Cat title", with: @scategory.cat_title
    click_on "Update Scategory"

    assert_text "Scategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Scategory" do
    visit scategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scategory was successfully destroyed"
  end
end
