$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'mongo'
require 'mongorm'

require 'spec'
require 'spec/autorun'
require 'spec/models'

Mongorm.connection = Mongo::Connection.new
Mongorm.database_name = 'test_db'

Spec::Runner.configure do |config|
  config.append_before do
    Mongorm.connection.db(Mongorm.database_name).collections.each { |c| c.remove }
  end
end
