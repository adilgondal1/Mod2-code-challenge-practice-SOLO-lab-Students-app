class Instructor < ApplicationRecord
    has_many :students
    

    def avg_age
        self.students.sum{|student| student.age} / self.students.length
    end

    # def avg_age
    #     self.students.average(:age)
    # end

    def sort_students
        self.students.sort_by{|student| student.name.downcase}
    end
end