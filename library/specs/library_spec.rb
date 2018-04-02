require ('minitest/autorun')
require_relative('../library.rb')

# * Create a getter for the books
# * Create a method that takes in a book
#   title and returns all of the information
#   about that book.
# * Create a method that takes in a book
#   title and returns only the rental details for that book.
# * Create a method that takes in a book title
#  and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# * Create a method that changes the rental details of a book
#   by taking in the title of the book, the student renting it and the date
#   it's due to be returned.

class TestLibrary < MiniTest::Test
  def setup()  # you can use this setup function, which will run at the start of every test
      @library =  Library.new([{
          title: "Coding for beginners",
          rental_details: {
           student_name: "Kelsie",
           date: "03/04/18"
          }
        }
    ])

  end

  def test_book_name
    assert_equal([{
        title: "Coding for beginners",
        rental_details: {student_name: "Kelsie", date: "03/04/18"}
      }], @library.book)
  end
  def test_output_information_by_book_name
    assert_equal([{title: "Coding for beginners", rental_details: {student_name: "Kelsie", date: "03/04/18"}}], @library.output_information_by_book_name("Coding for beginners"))
  end

end
