require ('minitest/autorun')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test
  def setup()  # you can use this setup function, which will run at the start of every test
      @codeclan_student = Student.new("Kelsie", 5)
  end
  def test_student_name
    assert_equal("Kelsie", @codeclan_student.student_name)
  end
  def test_student_cohort
    assert_equal(5, @codeclan_student.student_cohort)
  end
  def test_set_student_name
    @codeclan_student.set_student_name("Iona")
    assert_equal("Iona", @codeclan_student.student_name)
  end
  def test_student_cohort
    @codeclan_student.set_student_cohort("6")
    assert_equal("6", @codeclan_student.student_cohort)
  end
  def test_if_student_can_talk
    assert_equal("I can talk!", @codeclan_student.student_can_talk)
  end
  def test_say_favourite_language
    assert_equal("I love Python", @codeclan_student.say_favourite_language("Python"))
  end
end
