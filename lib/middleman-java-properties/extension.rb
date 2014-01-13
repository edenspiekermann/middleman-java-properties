require "middleman-java-properties/version"
require "middleman-java-properties/properties"


module Middleman
  module JavaProperties
    class << self
      load_path = []
      def registered(app, options={})
        puts 'JavaProperties registered'
        options[:properties_dir] ||= 'properties'
        puts options.to_s

        #set default directory if not set
        app.set :properties_dir, options[:properties_dir]
        #configure load path
        app.after_configuration do
          load_path = Dir[File.join(root, properties_dir, "*.properties")]
        end
      end

      alias :included :registered
    end
  end
end