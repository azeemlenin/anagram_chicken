# get '/:input' do
  # # byebug
  # a = Word.pluck(:word)
  # # Look in app/views/index.erb
  # input = params[:input] + "\n"
  # @anagram = Word.anagram_for?(input,a)
  # erb :index
# end

get '/:input' do
  a = Word.pluck(:word)
  input = params[:input] + "\n"



  @anagram = Word.anagram_for?(input,a)

  erb :index
end