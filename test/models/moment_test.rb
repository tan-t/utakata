require 'test_helper'

class MomentTest < ActiveSupport::TestCase
   test "create has_many through: relation" do
     user = User.find_by name: "MyString"
     assert_not_nil user
     tanka = Post.find_by tanka: "MyString"
     assert_not_nil tanka
     
     moment = Moment.new
     moment.user = user
     moment.title = "MyTitle"
     moment.post.build
     
     Moment.create(moment)
     
     assert true
    #  moment = {user};
    #  Moment.create();
   end
end
