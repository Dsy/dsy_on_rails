require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "creating a post should increment posts_count and update last_post in topic, forum and parent forums" do
    didattica_forum = FactoryGirl.create(:didattica_forum)
    corsi_A_F_forum = FactoryGirl.create(:corsi_A_F_forum)
    crittografia_forum = FactoryGirl.create(:crittografia_forum)
    topic = FactoryGirl.create(:topic_in_algebra_computazionale_forum)
    new_post = Post.new
    topic.posts << new_post
    assert_equal 1, topic.reload.posts_count
    assert_equal 1, crittografia_forum.reload.posts_count
    assert_equal 1, corsi_A_F_forum.reload.posts_count
    assert_equal 1, didattica_forum.reload.posts_count
    assert_equal new_post, topic.reload.last_post
    assert_equal new_post, crittografia_forum.reload.last_post
    assert_equal new_post, corsi_A_F_forum.reload.last_post
    assert_equal new_post, didattica_forum.reload.last_post
  end
end
