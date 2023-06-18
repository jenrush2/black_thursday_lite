require 'CSV'

class MerchantCollection
    attr_reader :merchant_location

    def initialize(merchant_location)
        @merchant_location = merchant_location
    end


end