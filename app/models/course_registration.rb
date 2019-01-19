class CourseRegistration < ApplicationRecord
    belongs_to :user, optional: false
    belongs_to :course, optional: false
end
