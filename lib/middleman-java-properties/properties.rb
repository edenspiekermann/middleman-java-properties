require 'java_properties'

module Middleman
  module JavaProperties
    class Properties
      attr_accessor :props

      def initialize file
        #puts file
        @props = ::JavaProperties::Properties.new(file)
        #@props.each{ |key,value| puts "#{key} = #{value}" }
        @props
      end
    end
  end
end