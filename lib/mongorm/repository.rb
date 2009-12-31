module Mongorm
  class Repository
    def create(klass, keys)
      klass.collection.insert(keys) 
    end

    def find(klass, query)

    end
  end
end
