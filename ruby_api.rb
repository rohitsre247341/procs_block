require 'net/http'
require 'uri'
api_url = URI.parse('https://api.github.com/repos/rails/rails')
request = Net::HTTP::Get.new(api_url) #created new request
responce = Net::HTTP.start(api_url.host,api_url.port, use_ssl: api_url.scheme == 'https') do |http|
  http.request(request)
end
if responce.is_a?(Net::HTTPSuccess)
  body = responce.body
  p " #{body} "
else 
  puts "request failed"
end
