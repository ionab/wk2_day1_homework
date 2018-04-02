class Library

  def initialize(books)
    @books = books
  end
  def book
    return @books
  end
  def output_information_by_book_name(book_name)
    for books in @books
      if books == book_name
      return @books
      end
    end
  end

  def output_retal_details_by_book_name(book_name)
    for books in @books
      if books == book_name
      return @books[rental_details:]
      end
    end
  end
end
