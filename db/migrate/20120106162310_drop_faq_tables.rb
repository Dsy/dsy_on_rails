class DropFaqTables < ActiveRecord::Migration
  def up
    drop_table :faq
    drop_table :faqentries
  end
end
