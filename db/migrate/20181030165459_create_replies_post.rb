class CreateRepliesPost < ActiveRecord::Migration[5.2]
  def change
    create_table :replies_posts do |t|
      t.text :body
      t.integer :forum_post_id
      t.integer :user_id
    end
  end
end
