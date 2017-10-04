require('minitest/autorun')
require('minitest/rg')
require_relative('../part_a.rb')

class TestStudent < MiniTest::Test
@student

def setup
@student = Student.new("Marta", 16)
end

def test_get_name
  assert_equal("Marta", @student.student_name)
end

def test_cohort_number
  assert_equal(16, @student.cohort_number)
end

def test_set_student_name
  @student.set_student_name("Rose")
  assert_equal("Rose", @student.student_name)
end

def test_set_cohort_number
  @student.set_cohort_number(13)
  assert_equal(13, @student.cohort_number)
end

def test_student_talks
  chat = @student.student_talk("I can talk")
  assert_equal("I can talk", chat)
end

def test_favourite_language
  @student.favourite_language("Ruby")
  assert_equal("I love #{"Ruby"}", @student.favourite_language("Ruby"))
end

end
