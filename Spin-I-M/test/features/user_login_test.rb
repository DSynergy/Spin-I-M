require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  attr_reader :user

  def create_user
    @user = User.create(username: "george",
                      email: "george.walker@bush.com",
                      password: "password",
                      password_confirmation: "password")
  end

  def user_logged_in
    create_user
    visit root_path
    click_link_or_button "Log In"
    fill_in "Email", with: "george.walker@bush.com"
    fill_in "Password", with: "password"
    click_link_or_button "Login To Spin-I-M"
  end

  test "user can log in" do
    create_user
    visit root_path

    click_link_or_button "Log In"
    assert_equal login_path, current_path
    fill_in "Email", with: "george.walker@bush.com"
    fill_in "Password", with: "password"

    click_link_or_button "Login To Spin-I-M"
    assert_equal playlists_path, current_path
  end

  test "user cannot login without email and password" do
    skip
  end

  test "registered user can view their profile" do
    user_logged_in
    visit user_path(user)
    assert page.has_content?("Welcome george")
  end

  test "unregistered user cannot view other user's profile" do
    user_logged_in
    visit user_path(user)
    within("#flash-alert") do
      assert page.has_content?("You Can't Go There...")
    end
  end



end
