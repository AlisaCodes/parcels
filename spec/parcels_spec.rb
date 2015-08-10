require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(4, 3, 2, 5)
      expect(test_parcel.volume()).to(eq(24))
    end
  end
end
