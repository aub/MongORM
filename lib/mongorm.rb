module Mongorm
  def self.connection=(connection)
    @connection = connection
  end

  def self.connection
    @connection
  end

  def self.database_name=(database_name)
    @database_name = database_name
  end

  def self.database_name
    @database_name
  end

  def self.database
    @connection.db(@database_name)
  end

  def self.repository
    @repository ||= Repository.new
  end
end

require 'mongorm/criteria'
require 'mongorm/document'
require 'mongorm/filterable'
require 'mongorm/findable'
require 'mongorm/identity_map'
require 'mongorm/query'
require 'mongorm/repository'
require 'mongorm/storable'
require 'active_support/inflector'
require 'active_support/inflections'

