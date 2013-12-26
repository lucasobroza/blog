json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :company, :active
  json.url account_url(account, format: :json)
end
