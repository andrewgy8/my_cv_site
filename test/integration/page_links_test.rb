require 'test_helper'

class PageLinksTest < ActionDispatch::IntegrationTest
  test "home page links" do
    get root_path
    assert_template 'pages/home'
    #The following test all of the header links
    assert_select "a[href=?]", root_path, count=2
    assert_select "a[href=?]", interests_path
    assert_select "a[href=?]", projects_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", show_path
  end
end
