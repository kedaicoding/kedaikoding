class Tagging < ApplicationRecord
  belongs_to :forum_thread
  belongs_to :tag
end
