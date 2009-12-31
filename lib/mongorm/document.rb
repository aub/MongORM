module Mongorm
  module Document

    def self.included(base)
      base.send(:extend, Filterable)
      base.send(:extend, Findable)
      base.send(:extend, ClassMethods)
      base.send(:include, Storable)
      descendants << base
    end

    def self.descendants
      @descendants ||= Set.new
    end

    module ClassMethods
      def collection
        Mongorm.database.collection(collection_name)
      end

      def collection_name
        self.name.tableize
      end
    end
  end
end
