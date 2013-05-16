require 'spec_helper'

describe Spree::Admin::UsersController do

  describe 'POST ban' do
    let(:user) { create :user, banned: false }
    let(:mock_user) { mock_model Spree::User, toggle!: true }

    before do
      controller.stub spree_current_user: user
      Spree::User.stub(:find).with('9') { mock_user }

      user.spree_roles << Spree::Role.where(name: 'admin').first_or_create
    end

    it "should toggle the user's ban status" do
      mock_user.should_receive(:toggle!).with(:banned)
      spree_post :ban, id: '9'
    end

    it "should redirect to the admin users index" do
      spree_post :ban, id: '9'
      response.should render_template :ban
    end
  end

end
