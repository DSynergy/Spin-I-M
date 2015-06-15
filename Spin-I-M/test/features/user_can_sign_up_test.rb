require 'test_helper'

class UserCanSignUpTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user can sign up" do
    visit root_path
    click_link_or_button "Register"
    fill_in "user[username]", with: "goober"
    fill_in "user[email]", with: "gooberface@gmail.com"
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_link_or_button "Register For Spin-I-M"
    assert_equal playlists_path, current_path
  end

  test "user redirects to new user form if invalid form inputs" do
    visit root_path
    # this breaks because a person needs to be signed in to go
    # to the playlist#index. Which happens to be the root path
    fill_in "user[username]", with: "goober"
    fill_in "user[email]", with: " "
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_link_or_button "Register For Spin-I-M"
    assert_equal new_user_path, current_path
  end

end
