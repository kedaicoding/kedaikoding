class CreateForumThread < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_threads do |t|
      t.string :title
      t.text :body
      t.string :tag
      t.integer :user_id
    end
  end
end
