require 'test_helper'

class UserSeesPlaylistIndexTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user sees playlist index when they sign in" do
    visit new_user_path
    fill_in "user[username]", with: "goober"
    fill_in "user[email]", with: "gooberface@gmail.com"
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_link_or_button "Register For Spin-I-M"
    assert_equal playlists_path, current_path
  end

end
