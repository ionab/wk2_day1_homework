class Library

  def initialize(book)
    @book = book
  end
  def book_name
    return @book[0][:title]
  end
end
