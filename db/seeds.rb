

File.open('words', 'r') do |f|
  f.each do |line|
    Word.create(word: line)
  end
end