# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Artwork.destroy_all

arty = User.create!(username: "artyartytheonemanyparty")
tobie = User.create!(username: "Toobtobbletobe")
vangogh = User.create!(username: "dontbitemeear")

art1 = Artwork.create!(title: "dog with bone", image_url: "12345", artist_id: vangogh.id)
art2 = Artwork.create!(title: "man on boat with bone", image_url: "12344", artist_id: tobie.id)
art3 = Artwork.create!(title: "white canvas 1", image_url: "12322", artist_id: arty.id)
art4 = Artwork.create!(title: "white canvas 2", image_url: "12321", artist_id: arty.id)
art5 = Artwork.create!(title: "sad boy", image_url: "12111", artist_id: tobie.id)
art6 = Artwork.create!(title: "Girl with a pearl earring", image_url: "10000", artist_id: tobie.id)

shared_art = ArtworkShare.create!(artwork_id: art1.id, viewer_id: tobie.id)
shared_art2 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: vangogh.id)
shared_art3 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: arty.id)
shared_art4 = ArtworkShare.create!(artwork_id: art3.id, viewer_id: vangogh.id)
shared_art5 = ArtworkShare.create!(artwork_id: art6.id, viewer_id: vangogh.id)
shared_art6 = ArtworkShare.create!(artwork_id: art4.id, viewer_id: tobie.id)