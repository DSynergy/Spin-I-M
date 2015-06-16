require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  attr_reader :user

  def setup
    user = User.create(username: "george",
                      email: "george.walker@bush.com",
                      password: "password",
                      password_confirmation: "password")
  end

  test "user can log in" do
    visit root_path

    click_link_or_button "Log In"
    assert_equal login_path, current_path
    # save_and_open_page
    fill_in "Email", with: "george.walker@bush.com"
    fill_in "Password", with: "password"

    click_link_or_button "Login To Spin-I-M"
    assert_equal playlists_path, current_path
  end

  # test "user cannot login without email and password" do
  #
  # end
  #
  # test "registered user can view their profile" do
  #   ApplicationController.any_instance.stubs(:current_user).returns(user)
  #   save_and_open_page
  #   visit user_path(user)
  #   assert page.has_content?("Welcome george")
  # end


end
