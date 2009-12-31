module Mongorm
  module Storable
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.send(:extend, ClassMethods)
    end

    module ClassMethods
      def create(params)
        Mongorm.repository.create(self, params)
      end
    end

    module InstanceMethods
      def save

      end
    end
  end
end
