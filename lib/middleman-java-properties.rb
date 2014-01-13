require 'middleman-java-properties/version'
require 'middleman-java-properties/extension'

::Middleman::Extensions.register(:java_properties) do
  ::Middleman::JavaProperties
end