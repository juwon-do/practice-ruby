require "http"

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")

p response.parse(:json)

i = 0
while i < response.parse(:json).length
  # p response.parse(:json)[i]["name"]

  if response.parse(:json)[i]["typical hour"].to_i < 20
    p response.parse(:json)[i]["typical hour"]
  end
  i += 1
end