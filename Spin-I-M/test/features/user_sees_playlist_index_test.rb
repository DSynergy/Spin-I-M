require 'test_helper'

class UserSeesPlaylistIndexTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  # def setup
  #   @user = User.create(username: "goober",
  #                       email: "gooberface@gmail.com",
  #                       password: "password")
  # end

  test "user sees playlist index when they sign in" do
    visit "/"

    assert_equal new_user_path, current_path

    click_link_or_button "Register"
    fill_in "user[username]", with: "goober"
    fill_in "user[email]", with: "gooberface@gmail.com"
    fill_in "user[password]", with: "password"
    click_link_or_button "Register For Spin-I-M"

    assert_equal playlists_path, current_path
  end

end
