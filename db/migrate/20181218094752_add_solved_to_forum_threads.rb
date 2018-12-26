class AddSolvedToForumThreads < ActiveRecord::Migration[5.2]
  def change
    add_column :forum_threads, :solved, :boolean, default: false
  end
end
