require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "home page" do
    get :home
    assert_response :success 
  end

  test "about page" do
    get :about
    assert_response :success 
  end

  test "projects page" do
    get :projects
    assert_response :success 
  end

  test "contact page" do
    get :contact
    assert_response :success 
    
  end

  test "show page" do
    get :show
    assert_response :success 
  end
end
