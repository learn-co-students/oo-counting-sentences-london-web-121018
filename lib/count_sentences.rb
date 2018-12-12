require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences #http://charliepark.tumblr.com/post/1063697980/splitting-strings-in-ruby-when-you-have-multiple
    self.split(/[?!.] /).size
  end

end
