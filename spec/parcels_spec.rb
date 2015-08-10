require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(4, 3, 2, 5)
      expect(test_parcel.volume()).to(eq(24))
    end
  end

  describe('#cost_to_ship') do
    it('returns cost of shipment of a short distance regular small shipment') do
      test_parcel = Parcel.new(4, 3, 2, 5)
      expect(test_parcel.cost_to_ship(25, 1)).to(eq(7.5))
    end

    it('returns cost of shipment of a long distance fast large shipment') do
      test_parcel = Parcel.new(4, 7, 4, 10)
      expect(test_parcel.cost_to_ship(51, 2)).to(eq(45))
    end

  end
end
