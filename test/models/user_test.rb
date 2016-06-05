require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Test User", email: "test@mail.com")
  end

  test "validates new user is valid" do
    user = User.new(name: "Test User", email: "test@mail.com")
    assert user.valid?
  end

  test "validates new user is invalid" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "name is present" do
    @user.name = nil
    assert_not @user.valid?
  end

  test "email is present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "emails are valid" do
    emails = ['test@example.com', 'test@ucbcba.edu.bo', 'test_user@mail.com',
            'test.user@mail.com', 'test_user.persona@mail.com.mx']
    emails.each do |email|
      @user.email =  email
      assert @user.valid?
    end
  end

  test "emails aren't valid" do
    emails = ['asdasd', 'asdasd@czx', 'asdsa"@sd.com', 'dasds@.mail.com',
      'sdsd..@mail.com', 'sdad_.sdd@mail.com', '.sds@mail.com' ]
    emails.each do |email|
      @user.email =  email
      assert_not @user.valid?
    end
  end
end
