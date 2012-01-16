namespace :db do
  namespace :fixtures do
    desc 'Dump YAML fixtures for development and testing purposes'
    task :dump => :environment do
      require 'active_record'
      puts "Fetching forums."
      forums = []
      didattica_forum = Forum.find 8
      forums << didattica_forum
      didattica_forum.children_forums.each do |f|
        if f.name != 'Dopo la Laurea'
          forums << f
          if not f.name.match(/^Corsi/).nil?
            forums.concat f.children_forums
          end
        end
      end
      puts "Fetching topics."
      topics = []
      forums.each do |f|
        topics.concat f.topics.order('id desc').limit(30)
      end
      puts "Fetching posts."
      posts = []
      topics.each do |t|
        posts.concat t.posts.limit(50)
      end
      puts "Fetching users."
      users = []
      posts.each do |p|
        users << p.user
      end
      users.uniq!

      [forums, topics, posts, users].each do |objects|
        i = 0
        object_name = objects.first.class.to_s.downcase
        puts "Exporting #{object_name.pluralize} to YAML."
        File.open("#{Rails.root}/test/fixtures/#{object_name.pluralize}.yml", 'w') do |file|
          file.write objects.inject({}) { |hash, object|
            if object.nil?
              object_id = "nil_#{i}"
              i = i + 1
            else
              object_id = object.id
            end
            hash["#{object_name}_#{object_id}"] = object
            hash
          }.to_yaml
        end
      end
    end
  end
end
