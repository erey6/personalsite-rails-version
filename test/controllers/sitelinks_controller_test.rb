require "test_helper"

class SitelinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitelink = sitelinks(:one)
  end

  test "should get index" do
    get sitelinks_url
    assert_response :success
  end

  test "should get new" do
    get new_sitelink_url
    assert_response :success
  end

  test "should create sitelink" do
    assert_difference("Sitelink.count") do
      post sitelinks_url, params: { sitelink: { name: @sitelink.name, url: @sitelink.url } }
    end

    assert_redirected_to sitelink_url(Sitelink.last)
  end

  test "should show sitelink" do
    get sitelink_url(@sitelink)
    assert_response :success
  end

  test "should get edit" do
    get edit_sitelink_url(@sitelink)
    assert_response :success
  end

  test "should update sitelink" do
    patch sitelink_url(@sitelink), params: { sitelink: { name: @sitelink.name, url: @sitelink.url } }
    assert_redirected_to sitelink_url(@sitelink)
  end

  test "should destroy sitelink" do
    assert_difference("Sitelink.count", -1) do
      delete sitelink_url(@sitelink)
    end

    assert_redirected_to sitelinks_url
  end
end
