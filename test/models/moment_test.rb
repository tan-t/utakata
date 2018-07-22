require 'test_helper'

class MomentTest < ActiveSupport::TestCase
   test "create has_many through relation" do
     user = User.find_by name: "MyString"
     assert_not_nil user
     tankas = Post.search "MyString"
     assert_not_nil tankas
     
     moment = Moment.new(title: "MyTitle",user: user)
     moment.posts << tankas
     
     assert moment.save
  end
  test "can get multiple tankas by a moment" do     
    moment = Moment.find_by title:"MyTitle"
    assert_not_nil moment
    
    assert_equal(moment.posts.size,2)
  end
  test "would allow duplicate titles" do     
    user = User.find_by name: "MyString"
    assert_not_nil user
    moment = Moment.new(title: "Duplicate", user:user )
    moment.save
    moment2 = Moment.new(title: "Duplicate", user:user )
    assert moment2.save
  end
end
