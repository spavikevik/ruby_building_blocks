def substrings(string, dictionary)
  Hash[dictionary.map do |word|
    [word, string.downcase.scan(Regexp.new(word)).count]
  end].delete_if {|k, v| v == 0}
end
