uri = URI.parse(ENV["REDISTOGO_URL"] || "redis://redistogo:de48e37b8a0f6a83af8663c04247fac2@sole.redistogo.com:9350/")
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)