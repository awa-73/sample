require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get helf" do
    get helf_path
    assert_response :success
    assert_select "title" , "Help | #{@base_title}"
  end
  test "should get ab" do
    get ab_path
    assert_response :success
    assert_select "title" , "About | #{@base_title}"
  end
  test "should get cnt" do
    get cnt_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home  | #{@base_title}"
  end
end
