require 'CSV'
require './lib/item.rb'

class ItemCollection
    attr_reader :array_of_items

    def initialize(item_location)
        @array_of_items = 
            array = []
            CSV.foreach(item_location, headers: true, header_converters: :symbol) do |row|
                array << Item.new(row)
                array
            end
            array
    end

    def first_item
        @array_of_items[0]
    end
    
    def all
        @array_of_items
    end

    def where(specific_merchant_id)
        array = []
        @array_of_items.each do |item|
            if item.merchant_id == specific_merchant_id
                array << item 
                array
            end
            array
        end
        array
    end


end