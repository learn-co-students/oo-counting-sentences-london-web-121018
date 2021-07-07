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

    self.split(" ").map do |elem|
      elem if elem.sentence? || elem.question? || elem.exclamation?
    end.compact.length
    #binding.pry
  end
end
