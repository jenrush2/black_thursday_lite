require './lib/item_collection.rb'
require './lib/merchant_collection.rb'

class SalesEngine
    attr_reader :items, :merchants

    def initialize(items, merchants)
        @items = items
        @merchants = merchants
    end

    def self.from_csv(data_import)
        SalesEngine.new(data_import[:items], data_import[:merchants])
    end

    def item_collection
        ItemCollection.new(@items)

    end

    def merchant_collection
        MerchantCollection.new(@merchants)
    end

end