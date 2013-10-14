require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
      before { visit root_path }
      it { should have_title('Historical Battle') }
      it { should_not have_title(full_title('home')) }
  end

  describe "About page" do
      before { visit about_path }
      it { should have_title('Historical Battle') }
      it { should have_content('About Me') }
      it { should have_title(full_title('About Me')) }
  end

  describe "Contact page" do
      before { visit contact_path }
      it { should have_title('Historical Battle') }
      it { should have_content('Contact Me') }
      it { should have_title(full_title('Contact Me')) }
  end
end
