module Mongorm
  module Findable
    def count
      collection.count()
    end

    def first
      Mongorm.repository.find(self, Query.new.limit(1))
    end
  end
end
