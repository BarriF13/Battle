require 'player'

  describe Player do
  subject(:myrtle) {Player.new('Myrtle')}

  describe '#name' do
    it "returns the name" do
      expect(myrtle.name).to eq 'Myrtle'
    end
  end
end