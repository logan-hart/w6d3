class Artwork < ApplicationRecord
    validates :image_url, presence: true, uniqueness: true
    validates :artists_id, presence: true
    

end