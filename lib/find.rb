class String
  define_method(:find) do |word|
    match_array = []
    counter = 0
    sentence = self.split(" ")
    sentence.each() do |item|
      if item === word
        counter += 1
      end
    end
    counter
  end
end
