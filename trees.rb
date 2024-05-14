require 'net/http'
require 'json'
require 'pp'

# url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) # Convert JSON data into Ruby data.

substring = 'ash'
tree_count = 0

trees.each do |tree|
  if tree["common_name"].downcase.include?(substring) || tree["botanical_name"].downcase.include?(substring)
    tree_count += 1
  end
end

puts "Number of Ash trees: #{tree_count}"
