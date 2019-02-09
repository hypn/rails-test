json.array!(@cartridges) do |cartridge|
  json.extract! cartridge, :id, :title
  json.url cartridge_url(cartridge, format: :json)
end
