class ChangeSolvedTypedataFromForumThreads < ActiveRecord::Migration[5.2]
  def change
    change_column :forum_threads, :solved, :boolean, :default => false

  end
end
