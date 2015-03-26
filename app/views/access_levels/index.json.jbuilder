json.array!(@access_levels) do |access_level|
  json.extract! access_level, :id, :user_id, :user_level, :frozen, :banned, :admin, :admin_level
  json.url access_level_url(access_level, format: :json)
end
