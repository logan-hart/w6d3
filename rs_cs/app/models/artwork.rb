class Artwork < ApplicationRecord
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true
    
    validates :title, uniqueness: { scope: :artist_id, message: "Artist has already created piece"}

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
end