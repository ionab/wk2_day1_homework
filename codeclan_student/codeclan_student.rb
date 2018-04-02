# def setup()  # you can use this setup function, which will run at the start of every test
#     @codeclan_student = Student.new("Kelsie", 5)
# end
# def test_student_name
#   assert_equal("Kelsie", @codeclan_student.name)
# end
class Student
  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

 def student_name
   return @student_name
 end
 def student_cohort
   return @student_cohort
 end

end
