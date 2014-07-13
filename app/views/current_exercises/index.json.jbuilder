json.array!(@current_exercises) do |current_exercise|
  json.extract! current_exercise, :id, :name
  json.url current_exercise_url(current_exercise, format: :json)
end
