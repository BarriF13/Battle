require 'player'

  describe Player do
  subject(:myrtle) {Player.new('Myrtle')}
  subject(:barri) {Player.new('Barri')}

  describe '#name' do
    it "returns the name" do
      expect(myrtle.name).to eq 'Myrtle'
    end
  end
  describe '#hit_points' do
    it 'returns the hit points' do
      expect(myrtle.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
  describe '#attack' do
    it 'damages the player' do
      expect(barri).to receive(:receive_damage)
      myrtle.attack(barri)
    end
  end
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect{ myrtle.receive_damage }.to change { myrtle.hit_points }.by(-10)
    end
  end
end