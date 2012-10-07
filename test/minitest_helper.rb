require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'minitest/autorun'
require 'minitest/rg'

$LOAD_PATH << File.expand_path('..', __FILE__)
$LOAD_PATH << File.expand_path('../../lib', __FILE__)

require 'cradle'