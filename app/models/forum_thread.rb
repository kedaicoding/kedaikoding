class ForumThread < ApplicationRecord
    belongs_to :user
    has_many   :forum_posts 

    validates :title, presence: {message: "Judul harus di isi" },
    length: {maximum: 50, message: "Maksimum karakter 50"}
    
    validates :body, presence: {message: "Body content tidak boleh kosong"}

    validates :tag, presence: {message: "Tag tidak boleh kosong "}
    
    
    
    
    
end