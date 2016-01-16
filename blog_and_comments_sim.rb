require "./blog_and_comments.rb"

blog = Blog.new("Here's a post","Kaia")

comment1 = Comment.new("Here's the first comment.","1/2/16")
comment2 = Comment.new("Here's the second comment.","1/3/16")


blog.add_comment(comment1)
blog.add_comment(comment2)

blog.remove_comment
