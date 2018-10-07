json.extract! course, :id, :name, :type, :term, :code, :subject_id, :description, :credits, :independent_study, :created_at, :updated_at
json.url course_url(course, format: :json)
