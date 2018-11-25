class CreateForumPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_posts do |t|
      t.text :body
      t.integer :forum_thread_id
      t.integer :user_id
    end
  end
end
