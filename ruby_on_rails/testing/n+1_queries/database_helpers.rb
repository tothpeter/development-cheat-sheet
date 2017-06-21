# In case of RSpec spec/support/helpers/database_helpers.rb

class SQLRequestCounter < ActiveSupport::LogSubscriber
  # Returns the number of database "Loads" for a given ActiveRecord class.
  def self.count active_record_class
    name = active_record_class.name + ' Load'
    Thread.current['log'] ||= {}
    Thread.current['log'][name] || 0
  end

  # Returns a list of ActiveRecord classes that were counted.
  def self.counted_classes
    log = Thread.current['log']
    loads = log.keys.select {|key| key =~ /Load$/ }
    loads.map { |key| Object.const_get(key.split.first) }
  end

  def self.reset_count
    Thread.current['log'] = {}
  end

  def sql(event)
    name = event.payload[:name]
    Thread.current['log'] ||= {}
    Thread.current['log'][name] ||= 0
    Thread.current['log'][name] += 1
  end
end
