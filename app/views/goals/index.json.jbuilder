json.array!(@goals) do |goal|
  json.extract! goal, :title, :compeleted_at, :description
  json.url goal_url(goal, format: :json)
end
