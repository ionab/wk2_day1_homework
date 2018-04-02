class Library

  def initialize(books)
    @books = books
  end
  def book
    return @books
  end
  def output_information_by_book_name(book_name)
    return @books
    for books in @books
      if books == book_name
      return @books
      end
    end
  end

  # def find_pet_by_name(pet_shop, pet_name)
  #   for pet in pet_shop[:pets]
  #     if pet[:name] == pet_name
  #       return pet
  #     end
  #   end
  #   return nil
  # end
end
