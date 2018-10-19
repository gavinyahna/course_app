class Course < ApplicationRecord
    serialize :requirements, Array
    serialize :subjects, Array
    has_many :enrollments
end
