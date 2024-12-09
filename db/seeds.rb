# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Post.create(title: "Where I live", text: "This is the first post.")
Post.create(title: "Work stuff", text: "This is the second post.")
Post.create(title: "How to make money!", text: "This is the third post.")

Tag.create(name: "Travel")
Tag.create(name: "Income")

PostTag.create(post_id: 1, tag_id: 1)
PostTag.create(post_id: 2, tag_id: 2)
PostTag.create(post_id: 3, tag_id: 2)
