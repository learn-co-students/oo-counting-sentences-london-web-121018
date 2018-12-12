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
    count = 0
    brokendown = self.split
    brokendown.each do |part|
    if part.sentence? || part.question? || part.exclamation?
      count += 1
    else
      count
    end
  end
    count
  end
end
