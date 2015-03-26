json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :display_name, :tagline, :bio, :freeliberal_title, :org_title, :organization_id, :organization_url, :twitter, :personal_url
  json.url profile_url(profile, format: :json)
end
