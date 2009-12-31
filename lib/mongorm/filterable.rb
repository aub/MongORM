module Mongorm
  module Filterable

    def filter(&block)
      Collection.new
    end

    def named_filter(name, &block)

    end
  end
end
