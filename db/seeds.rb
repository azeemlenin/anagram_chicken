
# 20150323173724_create_sorted_words.rb - Courtest from Jay
sql_query = "INSERT INTO words (word, letter) VALUES "
n = 0
d = 0
ActiveRecord::Base.transaction do
  File.readlines('words').each do |line|
    word = line.chomp
    sql_query << "('#{word}', #{word.length}),"
    n += 1
    if n >= 1000
      d += 1
      print "#{d}."
      ActiveRecord::Base.connection.execute(sql_query[0, sql_query.length - 1] << ";")
      sql_query = "INSERT INTO words (word, letter) VALUES "
      n = 0
    end
  end
  ActiveRecord::Base.connection.execute(sql_query[0, sql_query.length - 1] << ";")
end
puts ""