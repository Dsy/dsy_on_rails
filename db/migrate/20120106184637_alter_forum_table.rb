class AlterForumTable < ActiveRecord::Migration
  def up
    rename_table  :forum, :forums
    rename_column :forums, :forumid, :id
    remove_column :forums, :styleid
    rename_column :forums, :title, :name
    rename_column :forums, :displayorder, :rank
    rename_column :forums, :replycount, :posts_count
    rename_column :forums, :lastpost, :last_post
    rename_column :forums, :lastposter, :last_poster
    rename_column :forums, :threadcount, :threads_count
    rename_column :forums, :allowposting, :allow_posting
    rename_column :forums, :cancontainthreads, :can_contain_threads
    remove_column :forums, :daysprune
    remove_column :forums, :newpostemail
    remove_column :forums, :newthreademail
    remove_column :forums, :moderatenew
    remove_column :forums, :moderateattach
    remove_column :forums, :allowbbcode
    remove_column :forums, :allowhtml
    remove_column :forums, :allowimages
    remove_column :forums, :allowsmilies
    remove_column :forums, :allowicons
    rename_column :forums, :parentid, :parent_id
    remove_column :forums, :parentlist
    remove_column :forums, :allowratings
    remove_column :forums, :countposts
    remove_column :forums, :styleoverride
    remove_column :forums, :password
  end
end
