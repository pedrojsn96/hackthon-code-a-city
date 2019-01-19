class Course < ApplicationRecord
    has_many :users
    has_many :registrations, through: :course_registrations
end
