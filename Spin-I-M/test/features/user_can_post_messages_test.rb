require 'test_helper'

class UserMessageTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user posts messages on playlist show page" do 
    user = User.create(username: "user",
                       email: "user@example.com",
                       password: "password",
                       password_confirmation: "password")

    playlist = Playlist.create(name: "Hip Hop")
    login(user)

    visit playlist_path(playlist.id)
    assert_equal playlist_path(playlist.id), current_path 

    fill_in "text_box", with: "crazy message"
    click_on "Be Heard!"
    assert page.has_content?("crazy message")
    fill_in "text_box", with: "second crazy message"
    click_on "Be Heard!"
    assert page.has_content?("second crazy message")
  end

  private

  def login(user)
    visit login_path 
    fill_in "session[email]", with: user.email
    fill_in "session[password]", with: user.password
    click_on "Login To Spin-I-M"
  end
end
