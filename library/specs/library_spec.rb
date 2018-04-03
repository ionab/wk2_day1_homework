require ('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test
  def setup()
    @books = [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Kelsie",
         date: "03/04/18"
        }}]
      @library =  Library.new(@books)
  end

  def test_get_books()
    assert_equal(@books, @library.books)
  end

  def test_get_book_info()
    info = @library.book_info("lord_of_the_rings")
    assert_equal(@books[0], info)
  end


  def test_get_book_info__not_found ()
    assert_nil(@library.book_info"Alan's autobiography")
  end


  def test_get_rental_details()
    assert_equal(@books[0][:rental_details], @library.rental_details("lord_of_the_rings"))
  end

  def test_get_retal_details__not_found()
    assert_nil(@library.rental_details("Alan's autobiography"))
  end

  def test_add_book()
    @library.add_book("Harry Potter")
    assert_equal({
      title: "Harry Potter",
      rental_details: {
        student_name: "",
        date: ""
        }
      }, @library.book_info("Harry Potter"))
  end
  def test_change_rental_details()
    @library.add_book("Harry Potter")
    @library.change_rental_details("Harry Potter", "Sarah", "04/04/2018")
    assert_equal({
      title: "Harry Potter",
      rental_details: {
        student_name: "Sarah",
        date: "04/04/2018"
        }
      }, @library.book_info("Harry Potter"))
  end
end
