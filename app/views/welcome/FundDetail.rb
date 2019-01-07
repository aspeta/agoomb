Class FundDetail
require 'net/http'

uri = URI('https://api.sky.blackbaud.com/generalledger/v1/projects/{project_id}')

request = Net::HTTP::Get.new(uri.request_uri)

# Request headers
request['Bb-Api-Subscription-Key'] = '{SECRETBb-Api-Subscription-Key}'
request['Authorization'] = 'SECRETAuthorization'

# Request body
request.body = "{body}"

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body
