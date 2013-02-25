require 'spec_helper'

describe 'users/show' do
  before(:each) do
    @user = assign(:user, FactoryGirl.create(:user))
  end

  context 'mentoring' do
    before(:each) do
      controller.stub(:current_user) { nil }
    end

    it 'should say so if a user can mentor' do
      @user.can_mentor = true
      render
      rendered.should contain "Can mentor new users."
    end

    it 'should say so if a user wants mentoring' do
      @user.wants_mentoring = true
      render
      rendered.should contain "Would like to be mentored."
    end
  end
end
