Skip to content

Search or jump to…

Pull requests
Issues
Marketplace
Explore

@eaksens Sign out
0
0 0 eaksens/Bug-Tracking-App
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights  Settings
Bug-Tracking-App/test/models/post_test.rb
@eaksens eaksens Bug with User attached
9cc002c on Feb 7
We found a potential security vulnerability in one of your dependencies.
Only the owner of this repository can see this message.
Manage your notification settings or learn more about vulnerability alerts.

90 lines (78 sloc)  2.21 KB

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup #get call whenever test cases are executed
    @post = Post.create(title: "bug title", description: "Please put Bug description", issue_type:2, priority:1, status:0 )
  end

  test "above setup Bug must be valid" do
    # Test whether the Bug create in setup method is valid
    assert @post.valid?
  end

  test "Bug title must be present" do
    @post.title = ""
    assert_not @post.valid?
  end

  #Expect this test to fail
  test "Bug title must NOT be too short. Valid bug title" do
    @post.title = "aa"
    assert_not @post.valid?
  end

  #Bug title must be less than 400 characters
  #Expect this test to fail
  test "Bug title be less than 400 characters." do
    @post.title = "a"*401
    assert_not @post.valid?
  end

  #Bug Issue_type should be valid values: 0, 1, or 2
  # [:issue, :enhancement, :feature] ~> [0,1,2]
  test "Issue_type should be valid" do
    invalid_IssueTypes = [-1, -2, 3, 4] #Assert Invalid statuses
    invalid_IssueTypes.each do |is|
      begin
        @post.issue_type is
        assert false, "#{is} should be invalid}"
      rescue
        assert true
      end
    end
end

 test "Issue_type must be issue, enhancement, or feature" do
   # Assert Invalid statuses
   valid_IssueTypes = [:issue, :enhancement, :feature]
   valid_IssueTypes.each do |vs|
     begin
       @post.issue_type vs
       assert true
     rescue
       assert false, "#{vs} should be invalid}"
     end
   end
   end

   #Bug priority should be valid values: 0, 1, or 2
   # [:low, :medium, :high] ~> [0,1,2]
   test "Bug priority should be valid" do
     invalid_priority = [-1, -2, 3, 4] #Assert Invalid statuses
     invalid_priority.each do |is|
       begin
         @post.priority is
         assert false, "#{is} should be invalid}"
       rescue
         assert true
       end
     end
 end

  test "Bug priority must be low, medium, or high" do
    # Assert Invalid statuses
    valid_IssueTypes = [:low, :medium, :high]
    valid_IssueTypes.each do |vs|
      begin
        @post.priority vs
        assert true
      rescue
        assert false, "#{vs} should be invalid}"
      end
    end
    end


end
