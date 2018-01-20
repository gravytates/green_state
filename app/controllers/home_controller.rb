class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    # Code practice with debugging via pry!!
    # def hashPractice
    #   pool = ['a', 'c', 'd', 'e', 'k', 'i', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'y']
    #   h = 9
    #   n = 1693941520599974437
    #   key = []
    #   while key.length < h
    #     pool.each do |i|
    #       if (n - pool.index(i)) % 83 == 0 && n > 9
    #         key.push(i)
    #         n = (n - pool.index(i)) / 83
    #       end
    #     end
    #   end
    #   answer = key.reverse.join('')
    #   binding.pry
    #   print answer
    #   # return answer
    # end
    # # hashPractice
    #
    # def is_anagram(x,y)
    #   word1 = x.downcase.split('').sort.join
    #   word2 = y.downcase.split('').sort.join
    #   binding.pry
    #   answer = 'start'
    #   if word1 == word2
    #     answer = true
    #   else
    #     answer = false
    #   end
    #   binding.pry
    #   print answer
    # end
    # is_anagram('Gogdy', 'ggody')

  end
end
