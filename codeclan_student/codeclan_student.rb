
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
 def set_student_name(name)
    @student_name = name
 end
 def set_student_cohort(cohort)
   @student_cohort = cohort
 end
 def student_can_talk
   return "I can talk!"
 end
 def say_favourite_language(language)
   return "I love #{language}"
 end
end
