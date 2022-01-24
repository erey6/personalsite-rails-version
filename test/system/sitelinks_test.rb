require "application_system_test_case"

class SitelinksTest < ApplicationSystemTestCase
  setup do
    @sitelink = sitelinks(:one)
  end

  test "visiting the index" do
    visit sitelinks_url
    assert_selector "h1", text: "Sitelinks"
  end

  test "should create sitelink" do
    visit sitelinks_url
    click_on "New sitelink"

    fill_in "Name", with: @sitelink.name
    fill_in "Url", with: @sitelink.url
    click_on "Create Sitelink"

    assert_text "Sitelink was successfully created"
    click_on "Back"
  end

  test "should update Sitelink" do
    visit sitelink_url(@sitelink)
    click_on "Edit this sitelink", match: :first

    fill_in "Name", with: @sitelink.name
    fill_in "Url", with: @sitelink.url
    click_on "Update Sitelink"

    assert_text "Sitelink was successfully updated"
    click_on "Back"
  end

  test "should destroy Sitelink" do
    visit sitelink_url(@sitelink)
    click_on "Destroy this sitelink", match: :first

    assert_text "Sitelink was successfully destroyed"
  end
end
