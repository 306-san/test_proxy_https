require "bundler/setup"
# 一括require
Bundler.require
require "json"

get '/' do
  if params.empty?
    "Hello!".to_json
  else
    params.to_json
  end
end

get '/api/v1' do
  if params.empty?
    "Hello!".to_json
  else
    params.to_json
  end
end