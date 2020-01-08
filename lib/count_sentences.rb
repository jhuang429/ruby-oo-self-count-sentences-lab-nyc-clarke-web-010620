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

#   def count_sentences
#     previous = false # declaring 2 variables, one line
#     count = 0
#     self.each_char{ |char|
#       if char == "." || char == "?" || char == "!" #or gate, 
#         if previous == false
#           count += 1 # assigning 2 variables on one line
#           previous = true
#         end
#       else
#         previous = false
#       end
#     }
#     return count
#   end
# end

def count_sentences
  arr = self.split(" ")
  arr.select{|word| word[-1] == "." ||word[-1] == "!" ||word[-1] == "?" }.length
  #return self.split.select{|word| word.match? /[.?!]/ }.length
end

  
end
