def caesar_cipher(string, offset)
  string.chars.map {|char| offset_char(char, offset)}.join()
end

def offset_char(char, offset)
  if char =~ /[a-zA-Z]/
    c = (char.ord + offset)
    c.chr =~ /[a-zA-Z]/ ? (return c.chr) : (c-26).chr
  else
    return char
  end
end
