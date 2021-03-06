require 'spec_helper'

describe "Article of battle pages" do

  subject { page }

  describe "Adding New Article page" do
    before { visit new_battle_path }
    let(:submit) { "Create New Article" }
    it { should have_content('Adding New Article') }
    it { should have_title(full_title('Adding New Article')) }
    it { should have_content('Belligerent-A') }
    it { should have_content('Belligerent-B') }
    it { should have_content('Strength-A') }
    it { should have_content('Strength-B') }
    it { should have_content('Casualties & Losses-A') }
    it { should have_content('Casualties & Losses-B') }

    describe "with invalid information" do
      it "should not create a new article" do
        expect { click_button submit }.not_to change(Battle, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "name",         with: "Battle of Example"
        fill_in "date",        with: "12-05-1500"
        fill_in "location",     with: "Example Location"
        fill_in "belligerentA", with: "A"
        fill_in "belligerentB", with: "B"
        fill_in "strengthA", with: "100"
        fill_in "strengthB", with: "150"
        fill_in "casualtiesA", with: "10"
        fill_in "casualtiesB", with: "15"
        fill_in "result", with: "A win"
      end
      it "should create a user" do
        expect { click_button submit }.to change(Battle, :count).by(1)
      end
    end
  end

  describe "Article Detail page" do
    let(:battle) { FactoryGirl.create(:battle) }
    before { visit battle_path(battle) }
    it { should have_content(battle.name) }
    it { should have_title(battle.name) }
  end
end
