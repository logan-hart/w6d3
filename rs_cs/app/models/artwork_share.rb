class ArtworkShare < ApplicationRecord
    validates :artwork_id, uniqueness: {scope: :viewer_id, message: "this artwork has already been shared"}
    validates :artwork_id, :viewer_id, presence: true

    # validate check_creator, message

    belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User
    
    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork

    # def check_creator
    #     if viewer_id != creator_id
    #         return mess
    # end
end

# creator_id = artwork_id.artist_id

# viewer_id, creator_id, artwork_id
#     1     |      1    |     3 a



# qw