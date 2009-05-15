module Chebyte
  module WebSearch #:nodoc:


      def self.included(base)
        base.extend ClassMethods
      end

      module ClassMethods
        def web_search
          include Chebyte::WebSearch::InstanceMethods
          extend  Chebyte::WebSearch::SingletonMethods
        end
      end

      module SingletonMethods

        def google_search(options={})
          query = ::Google::Query.new(options)
          query.execute
        end

      end

      module InstanceMethods

      end

  end
end

