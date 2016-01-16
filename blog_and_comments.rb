class Blog
  attr_accessor :content, :author, :date

  def initialize(content, author, comments ={})
    @content, @author, @comments = content, author, comments
  end

  def add_comment(comment_name, date, content)
    comment_name = Comment.new(date, content)
    @comments[comment_name] = {date.split("/") => content}
  end

  def remove_comment
    @comments.each {|id, comment| comment.each {|date, content| puts "#{id} \n #{date.join("/")}: #{content}"}}
    puts "Which comment would you like to delete? Enter id: "
    id = gets.chomp.to_i
    puts "You deleted #{@comments.values_at(id)}"
    @comments.delete(id)
    puts @comments
  end

  def display_comments
    @comments.each {|id, comment| comment.each {|date, content| "#{id} \n #{date.join("/")}: #{content}"}}
  end
end

class Comment
  attr_accessor :date, :content
  def initialize(date, content)
    @content, @date = content, date.split("/")
  end
end
