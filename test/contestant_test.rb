require "./lib/contestant"
require "./lib/game"

describe Contestant do
  before(:each) do
    @alexander = Contestant.new({
      first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10})
  end

  it "exists" do
    expect(@alexander).to be_a(Contestant)
  end

  it "has a full name" do
    expect(@alexander.full_name).to eql('Alexander Aigiades')
  end

  it "has an age" do
    expect(@alexander.age).to eql(28)
  end

  it "has a state of residence" do
    expect(@alexander.state_of_residence).to eql('CO')
  end

  it "has spending money" do
    expect(@alexander.spending_money).to eql(10)
  end

  it "verifies state residency" do
    expect(@alexander.out_of_state?).to eql(false)
  end

  it "has no game interest by default" do
    expect(@alexander.game_interests).to eql([])
  end

  it "adds game interests" do
    mega_millions = Game.new('Mega Millions', 5, true)
    pick_4 = Game.new('Pick 4', 2)
    @alexander.add_game_interest('Mega Millions')
    @alexander.add_game_interest('Pick 4')
    expect(@alexander.game_interests).to eql(["Mega Millions", "Pick 4"])
  end

end
