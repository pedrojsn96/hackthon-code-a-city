json.extract! lesson_section, :id, :name, :content, :course_id, :created_at, :updated_at
json.url lesson_section_url(lesson_section, format: :json)
