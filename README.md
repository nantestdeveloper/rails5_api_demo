# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
 PostSerializer.new(post).as_json

100.times do |i|
  post = Post.create!(title: "Title #{i}", content: "Content #{i}")
  25.times do |i2|
    Comment.create!(post: post, author: "Author #{i2}", body: "Comment #{i2}")
  end
end

http://localhost:4000/users