require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
# pp dog_breeds # pp stands for pretty print.

# Accesses the key 'message' from the API and iterates over each key-value pair, then the key is assigned as 'breed' and value as 'sub'breed and lists the breed starting with a capital. Next it iterates through the sub-breeds array (if any) and nests the under the corresponding breed(key)
dog_breeds['message'].each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts "  * #{sub_breed.capitalize}"
  end
end
