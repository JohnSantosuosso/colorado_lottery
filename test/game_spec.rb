require './lib/game'

describe Game do
  before(:each) do
    @pick_4 = Game.new('Pick 4', 2)
    @mega_millions = Game.new('Mega Millions', 5, true)
  end

  it "exists" do
    expect(@pick_4).to be_a(Game)
  end

  it "has a name" do
    expect(@pick_4.name).to eql('Pick 4')
  end

  it "has a cost" do
    expect(@pick_4.cost).to eql(2)
  end

  it "is not part of a national_drawing" do
    expect(@pick_4.national_drawing?).to eql(false)
    expect(@mega_millions.national_drawing?).to eql(true)
  end

end
