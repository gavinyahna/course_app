class Course < ApplicationRecord
    serialize :requirements, Array
    serialize :subjects, Array
    has_many :enrollments
    has_many :users, :through => :enrollments
end
