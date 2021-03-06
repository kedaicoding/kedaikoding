class ForumThread < ApplicationRecord
    belongs_to  :user
    has_many    :forum_posts 
    has_many    :taggings
    has_many    :tags, through: :taggings


    validates :title, presence: {message: "harus di isi" },
    length: {maximum: 50, message: "Maksimum karakter 50"}
    
    validates :body, presence: {message: "content tidak boleh kosong"}

    # validates :tag, presence: {message: "Tag tidak boleh kosong "}
    

  def self.tagged_with(name)
    Tag.find_by!(name: name).forum_threads
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
    
    
    
    
end