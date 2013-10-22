require 'spec_helper'

describe Battle do
  before { @battle = Battle.new(name: "Battle of Example", date: "12-05-1500", location: "Example Location", belligerentA: "A", belligerentB: "B", strengthA: "100", strengthB: "150", casualtiesA: "10", casualtiesB: "15", result: "A win") }
  subject { @battle }

  it { should respond_to(:name) }
  it { should respond_to(:date) }
  it { should respond_to(:location) }
  it { should respond_to(:belligerentA) }
  it { should respond_to(:belligerentB) }
  it { should respond_to(:strengthA) }
  it { should respond_to(:strengthB) }
  it { should respond_to(:casualtiesA) }
  it { should respond_to(:casualtiesB) }
  it { should respond_to(:result) }
  it { should be_valid }

  describe " when name is not present" do
    before { @battle.name = " " }
    it { should_not be_valid }
  end
  describe " when date is not present" do
    before { @battle.date = " " }
    it { should_not be_valid }
  end
  describe " when location is not present" do
    before { @battle.location = " " }
    it { should_not be_valid }
  end
  describe " when belligerentA is not present" do
    before { @battle.belligerentA = " " }
    it { should_not be_valid }
  end
  describe " when belligerentB is not present" do
    before { @battle.belligerentB = " " }
    it { should_not be_valid }
  end
  describe " when result is not present" do
    before { @battle.result = " " }
    it { should_not be_valid }
  end

  describe "when battle name is already taken" do
    before do
      battle_with_same_name = @battle.dup
      battle_with_same_name.name = @battle.name.upcase
      battle_with_same_name.save
    end
    it { should_not be_valid }
  end

end
