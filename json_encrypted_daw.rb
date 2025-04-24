require 'json'
require 'openssl'
require 'base64'

data = { name: "Bano", email: "me@example.com" }.to_json

key = "thisisasecretkey!"[0..15]
iv = "thisisaninitvectr"[0..15]
cipher = OpenSSL::Cipher.new("AES-128-CBC")
cipher.encrypt
cipher.key = key
cipher.iv = iv

encrypted = cipher.update(data) + cipher.final
encoded = Base64.encode64(encrypted)

puts "Data encrypted daw: #{data.to_json}"
puts "Data encrypted siguro: #{encoded}"

