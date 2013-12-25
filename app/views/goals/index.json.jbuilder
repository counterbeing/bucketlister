json.array!(@goals) do |goal|
  json.extract! goal, :title, :completed_at, :description, :created_at
  json.url goal_url(goal, format: :json)
end
