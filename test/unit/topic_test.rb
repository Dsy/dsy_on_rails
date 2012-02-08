require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "creating a topic should increment topics_count in forum and parent forums" do
    didattica_forum = FactoryGirl.create(:didattica_forum)
    corsi_A_F_forum = FactoryGirl.create(:corsi_A_F_forum)
    crittografia_forum = FactoryGirl.create(:crittografia_forum)
    new_topic = Topic.new(title: 'prossimo appello?')
    crittografia_forum.topics << new_topic
    assert_equal 1, crittografia_forum.reload.topics_count
    assert_equal 1, corsi_A_F_forum.reload.topics_count
    assert_equal 1, didattica_forum.reload.topics_count
  end
end
