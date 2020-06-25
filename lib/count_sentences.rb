require 'pry'

class String

  def sentence?
    end_with?(".")
  end

  def question?
    end_with?("?")
  end

  def exclamation?
    end_with?("!")
  end

  def count_sentences
    sentence_array = self.split(/[.?!]/)
    sentence_array.delete_if {|sentence| sentence.empty?}
    sentence_array.length
  end
end