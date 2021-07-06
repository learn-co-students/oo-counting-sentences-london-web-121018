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

  def count_sentences
    delimitars = ['.','!','?']
    tocount = self.split(Regexp.union(delimitars))
    tocount.reject! {|sentence| sentence.empty?}
    tocount.count
    
  end
  
end
