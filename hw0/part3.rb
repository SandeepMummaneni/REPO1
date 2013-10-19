class BookInStock
  attr_reader :isbn, :price
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    raise ArgumentError, 'ISBN number is the empty string' unless !isbn.empty?
    raise ArgumentError, 'Argument is not floating-point number' unless price.is_a? Numeric
    raise ArgumentError, 'Argument price is less than or equal to zero' unless price > 0
    @isbn=isbn
    @price=Float(price)
  end
  def price_as_string
    return '$'.concat "%.2f" % price.to_s()
  end
end

book = BookInStock.new("book1",20)
puts book.price_as_string

book = BookInStock.new("book1",33.8)
puts book.price_as_string


