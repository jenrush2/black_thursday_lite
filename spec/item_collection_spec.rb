require 'CSV'
require 'rspec'
require "./lib/item.rb"
require "./lib/sales_engine.rb"
require "./lib/item_collection.rb"

RSpec.describe ItemCollection do
    it "exists" do
        item_collection_1 = ItemCollection.new("./data/items.csv")

        expect(item_collection_1).to be_instance_of ItemCollection
    end

    it "first item in array of items is an instance of Item" do
        item_collection_1 = ItemCollection.new("./data/items.csv")
        expect(item_collection_1.first_item).to be_instance_of Item
    end

    it "can return either an empty array or an array of all items with a specific merchant_id" do
        item_collection_1 = ItemCollection.new("./data/items.csv")

        p item_collection_1.where(12334195)

    end
end

      
