require 'test_helper'

class UserMessageTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user posts messages on playlist show page" do 
    user = User.create(username: "user",
                       email: "user@example.com",
                       password: "password",
                       password_confirmation: "password")

    playlist = Playlist.create(name: "Hip Hop")

    visit playlist_path(playlist.id)

    fill_in "message[new_message]", with: "new message"
    click_on "submit message"
    page.has_content?("new message")

    fill_in "message[new_message]", with: "second message"
    click_on "submit message"
    page.has_content?("second message")
  end

  private

  def login(user)
    visit new_session_path
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    click_on "Log In"
  end
end
