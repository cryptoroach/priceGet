require 'net/http'
require 'json'

print("> TICKER SYMBOL: ")

currency = gets

print("\n")

while true
  url = "https://min-api.cryptocompare.com/data/price?fsym=" + currency + "&tsyms=USD,EUR,GBP,BTC"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  responseHash = JSON.parse(response)
  print("USD: " + responseHash["USD"].to_s + "\nEUR: " + responseHash["EUR"].to_s + "\nGBP: " + responseHash["GBP"].to_s + "\nBTC: " + responseHash["BTC"].to_s + "\n")
  sleep 1
end
