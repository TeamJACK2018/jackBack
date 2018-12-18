require 'rails_helper'


describe Profile do
  let(:profile) {Profile.create(first_name: 'evan', last_name: 'powell', phone:'111-111-1111')}

  describe 'display name' do

    it 'should display first and last name' do
      expect(profile.display_name).to eq('evan powell')
    end

    it "should display first name without last name or blank padding" do
      expect(profile.first_name).to eq('evan')
    end

    it "should display the phone number if no first or last name exists (also without blank padding)" do
      expect(profile.phone).to eq('111-111-1111')
    end
  end
end
