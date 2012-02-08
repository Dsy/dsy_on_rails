FactoryGirl.define do
  factory :didattica_forum, class: Forum do
    id 8
    name 'Didattica'
    active 1
    topics_count 0
    parent_id -1
    last_post_id nil
    posts_count 0
  end

  factory :corsi_A_F_forum, class: Forum do
    id 206
    name 'Corsi A - F'
    active 1
    topics_count 0
    parent_id 8
    last_post_id nil
    posts_count 0
  end

  factory :crittografia_forum, class: Forum do
    id 460
    name 'Crittografia'
    active 1
    topics_count 0
    parent_id 206
    last_post_id nil
    posts_count 0
  end
end
