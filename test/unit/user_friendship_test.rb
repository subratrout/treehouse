require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  
  should belong_to(:user)
  should belong_to(:friend)

  test "that creating a frienship works without raising an exception" do
  	assert_nothing_raised do 
  	  UserFriendship.create user: users(:Gary), friend: users(:Mike)
  	end
  end


  	test "that creating a friendship is based on a user id and friend id works"
    	UserFriendship.create user_id: users(:Gary).id, friend_id: users(:Mike).id
    	assert users(:Gary).friends.include?(users(:Mike))
	end
end
