class ArtworkSharesController < ApplicationController

   def create
      artwork_share = ArtworkShare.new(artwork_share_params)

      if artwork_share.save
         render json: artwork_share
      else
         render json: artwork_share.errors.full_messages, status: 422
      end
   end

   def destroy
      @artwork_share = ArtworkShare.new(artwork_share_params)
      share_dup = @artwork_share.dup
      @artwork_share.destroy
      render json: share_dup
   end

   private
   def artwork_share_params
      params.require(:artwork_shares).permit(:viewer_id, :artwork_id)
   end   

end