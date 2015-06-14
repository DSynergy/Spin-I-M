require 'test_helper'

class UserCanSignUpTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user can sign up" do
    visit "/"
    click_link_or_button "Register"
    fill_in "user[username]", with: "goober"
    fill_in "user[email]", with: "gooberface@gmail.com"
    fill_in "user[password]", with: "password"
    click_link_or_button "Register For Spin-I-M"
    assert current_path, root_path
  end

end
