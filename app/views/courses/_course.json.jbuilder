json.extract! course, :id, :title, :description, :score_min, :start_date, :end_date, :created_at, :updated_at
json.url course_url(course, format: :json)
