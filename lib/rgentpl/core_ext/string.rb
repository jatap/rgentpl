# Rgentpl
module Rgentpl
  # Core Extensions
  module CoreExt
    # String.class_eval do
    # end
    String.class_eval do
      # Camelize
      #
      # @return [String] the camelized string
      def camelize
        split(/\s|-|_/).each { |s| s.capitalize! }.join('')
      end

      # Camelize!
      #
      # @return [String] the camelized string
      def camelize!
        replace(split(/\s|-|_/).each { |s| s.capitalize! }.join(''))
      end
    end
  end
end
