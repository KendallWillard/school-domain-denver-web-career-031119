# code here!
require 'pry'

class School
  attr_reader :name, :roster

    def add_student(student_name, grade)
      if self.roster[grade] == nil
        self.roster[grade] = []
        self.roster[grade] << student_name
      else
        self.roster[grade] << student_name
      end
    end


  def initialize(name)
    @roster = {}
    @name = name
  end

  def grade(students_grade)
    roster[students_grade]
  end

  def sort
    @roster.each { |grade, name| @roster[grade] = name.sort }
  end

end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)

school.roster
