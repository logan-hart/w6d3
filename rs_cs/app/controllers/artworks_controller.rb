class ArtworksController < ApplicationController

    def index 
        @artworks = Artwork.all
        render json: @artworks
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def update
        # @artwork = Artwork.find(params[:id])

    end


end