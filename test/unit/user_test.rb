require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "a user should enter a first name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end
  
    test "a user should enter a last name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end
  
  test "a user should enter a profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end
  
  test "a user should have an unique profile name" do
    user = User.new
    user.profile_name = users(:anonyo).profile_name
    assert !user.save
    puts user.errors.inspect
    assert !user.errors[:profile_name].empty?
  end
  
  
  test "a user should have a profile name that is properly formatted" do
    user = User.new(first_name: 'Mark', last_name: 'helaiop', email: 'helaiop@mgial.com')
    user.password = user.password_confirmation = 'passworkdggggg'
    user.profile_name = 'mark'
    
  end
  
end
