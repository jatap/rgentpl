# Rgentpl
module Rgentpl
  # Core Extensions
  module CoreExt
    String.class_eval do
      # Camelize
      #
      # @return [String] the camelized string
      def camelize
        split(/\s|-|_/).each(&:capitalize!).join('')
      end

      # Camelize!
      #
      # @return [String] the camelized string
      def camelize!
        replace(split(/\s|-|_/).each(&:capitalize!).join(''))
      end
    end
  end
end
