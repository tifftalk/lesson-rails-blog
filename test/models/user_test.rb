require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @bob = User.create(first_name:"bob", last_name:"mcgee", username:"bob",
                       email:"bob@example.com")
  end

  test "should be valid base case" do
    assert @bob.valid?
  end

  test "first name should be valid" do
    @bob.first_name = nil
    assert_not @bob.valid?
  end

  test "last name should be valid" do
    @bob.last_name = nil
    assert_not @bob.valid?
  end

  test "username should be valid" do
    @bob.username = nil
    assert_not @bob.valid?

    too_long = "ThisUserNameIsFarTooLongToBeLegal"
    @bob.username = too_long
    assert_not @bob.valid?
  end

  test "email should be valid" do
    @bob.email = "NotValid"
    assert_not @bob.valid?

    @bob.email= "StillNotValid@"
    assert_not @bob.valid?
  end
end
