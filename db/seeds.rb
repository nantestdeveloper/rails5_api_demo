10.times do |user|
	user = User.create(email: "test#{user}@gmail.com",username: "user#{user}",age: "#{user+1}")
	puts user
	20.times do |i|
	  post = Post.create!(title: "Title #{i}", content: "Content #{i}",user_id: user.id)
	  puts post
	  5.times do |i2|
	    Comment.create!(post: post, author: "Author #{i2}", body: "Comment #{i2}",user_id: user.id)
	  end
	end
end