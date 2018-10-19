class Course < ApplicationRecord
    serialize :requirements, Array
    serialize :subjects, Array
    has_many :enrollments
    has_many :users, :through => :enrollments

    def self.search(name, subject)
        if name != "" && subject != ""
            where(['LOWER(name) LIKE LOWER(?) AND subjects LIKE ?', "%#{name}%", "%#{subject}%"])
        elsif subject == "" && name != ""
            where(['LOWER(name) LIKE LOWER(?)', "%#{name}%"])
        elsif name == "" && subject != ""
            where(['subjects LIKE ?', "%#{subject}%"])
        else
            Course.all
        end
    end
end
