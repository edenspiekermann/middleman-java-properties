require "middleman-java-properties/version"
require 'java_properties'


module Middleman
  module JavaProperties
    class << self

      def registered(app, options={})
        #puts 'JavaProperties registered'
        options[:properties_dir] ||= 'properties'

        #set default directory if not set
        app.set :properties_dir, options[:properties_dir]
        app.helpers Helpers
      end

      alias :included :registered

      module Helpers
        def load_property_file(file_name)
          properties = nil
          file_path = File.join(root, properties_dir, file_name)
          properties = ::JavaProperties::Properties.new(file_path)
        end

      end
    end
  end
end