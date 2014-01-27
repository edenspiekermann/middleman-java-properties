# Middleman::Java::Properties

Adds support to parse Java property files in a Middleman project. Parsing and loading is done via the ["java_properties" gem](https://github.com/flergl/java-properties-for-ruby).

## Warning:
This extension is still work in progress and not yet well tested. Use on your own risk!

## Installation

Add this line to your application's Gemfile:

    gem "middleman-java-properties", :github => "edenspiekermann/middleman-java-properties"

And then execute:

    $ bundle

Activate the extension in your config.rb. You can pass as option the location of the folder containing your property files (default: "properties").

    activate :java_properties, :properties_dir => 'path/to/your/properties'

## Usage

The extension provides a Middleman helper to load a property file.

    @properties = load_property_file( file_name )


## Contributing

1. Fork it ( http://github.com/edenspiekermann/middleman-java-properties/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request