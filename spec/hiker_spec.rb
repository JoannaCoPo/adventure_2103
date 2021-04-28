require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe Hiker do
  it 'exists' do
    hiker = Hiker.new('Dora', :moderate)
    expect(hiker).to be_an_instance_of(Hiker)
  end

  it 'has attributes' do
    hiker = Hiker.new('Dora', :moderate)
    expect(hiker.name).to eq('Dora')
    expect(hiker.experience_level).to eq(:moderate)
  end

  it 'can carry snacks' do
    hiker = Hiker.new('Dora', :moderate)
    expect(hiker.snacks).to eq({})
  end

  it 'can pack snacks' do
    hiker = Hiker.new('Dora', :moderate)
    hiker.pack('water', 1)
    hiker.pack('trail mix', 3)
    expect(hiker.snacks).to eq({"water"=>1, "trail mix"=>3})
    hiker.pack('water', 1)
    expect(hiker.snacks).to eq({"water"=>2, "trail mix"=>3})
  end

  it 'can accumulate parks visited' do
    hiker = Hiker.new('Dora', :moderate)
    expect(hiker.parks_visited).to eq([])
  end

  it 'can visit park adding to list' do
    hiker = Hiker.new('Dora', :moderate)
    park1 = Park.new('Capitol Reef')
    park2 = Park.new('Bryce Canyon')
    hiker.visit(park1)
    hiker.visit(park2)
    expect(hiker.parks_visited).to eq([park1, park2])
  end


end
