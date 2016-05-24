require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  def title
    @base_title = "| AGY"
  end
  test "home page" do
    get :home
    assert_response :success
    assert_select ("title"), "Home #{@base_title}" 
  end

  test "about page" do
    get :about
    assert_response :success 
    assert_select ("title"), "About #{@base_title}"
  end

  test "projects page" do
    get :projects
    assert_response :success 
    assert_select ("title"), "Projects #{@base_title}"
  end

  test "contact page" do
    get :contact
    assert_response :success 
    assert_select ("title"), "Contact #{@base_title}"
  end

  test "show page" do
    get :show
    assert_response :success
    assert_select ("title"), "Show #{@base_title}" 
  end
  
end
