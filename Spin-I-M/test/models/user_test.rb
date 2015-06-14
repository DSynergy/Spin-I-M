require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.create(username: "beach_bum",
                        email: "sandlover@example.com",
                        password: "password",
                        password_confirmation: "password"
                        )
  end

  test  "should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = "   "
    refute @user.valid?
  end

  test "email should be present" do
    @user.email = "   "
    refute @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 100 + "@example.com"
    refute @user.valid?
  end

  test "validation only accepts valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "validation rejects invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      refute @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    phoney = @user.dup
    phoney.email = @user.email.upcase
    @user.save
    refute phoney.valid?
  end


end
