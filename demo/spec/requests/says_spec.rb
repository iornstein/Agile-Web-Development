require 'spec_helper'

describe "When we want to Say" do

  subject { page }

  describe "Hello" do

    before { visit '/say/hello' }

    it { should have_content('Hello') }
    it { should have_content('2014') }
    it { should have_content('here') }

    describe ", we also should be able to leave" do
      before { click_on "here" }

      it { should have_content('Bye') }
    end
  end

  describe "Bye" do

    before { visit '/say/goodbye' }

    it { should have_content('Bye') }
    it { should_not have_content('2014') }

  end

end


