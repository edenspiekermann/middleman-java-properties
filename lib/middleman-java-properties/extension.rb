require "middleman-java-properties/version"
require 'java_properties'

module Middleman
  module JavaProperties
    class << self
      def registered(app, options={})
        options[:properties_dir] ||= 'properties'
        puts 'JavaProperties registered'
      end
      alias :included :registered
    end
  end
end