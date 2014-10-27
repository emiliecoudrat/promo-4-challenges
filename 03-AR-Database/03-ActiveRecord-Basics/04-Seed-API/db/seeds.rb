require "json"
require "rest-client"

response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
ids = JSON.parse(response).take(10)
# repos.10
# => repos is an `Array` of `Hashes`.

ids.each do |id|
  url = "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
  json_post = RestClient.get url
  post = JSON.parse(json_post)
  Post.create(name: post["title"], url: post["url"], votes: post["score"])
end

# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.