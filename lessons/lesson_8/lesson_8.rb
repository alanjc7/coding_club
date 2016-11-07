#class is a framework for creating many objects with the same format/attributes

class BookCard
	def initialize(title)
		@title = title
		@book_ratings = []
	end

	def author(author)
		@author = author
	end

	def book_ratings(book_rating)
		@book_ratings << book_rating
	end
end

class Rating
	def initialize(name)
		@name = name
	end

	def score(score)
		@score = score
	end
end

learning_elixir = BookCard.new("Learing Elixir")

learning_elixir.author("Paulo")

rating = Rating.new("Tiago")

rating.score(4.5)

learning_elixir.book_ratings(rating)

rating_1 = Rating.new("Jack")

rating_1.score(3)

learning_elixir.book_ratings(rating_1)

puts learning_elixir.inspect
