module OpenWeather
  module Entities
    class Base
      def self.attr_accessor(*vars)
        @attributes ||= []
        @attributes.concat vars
        super(*vars)
      end
    
      def self.attributes
        @attributes
      end
    
      def attributes
        self.class.attributes
      end
    end
  end
end