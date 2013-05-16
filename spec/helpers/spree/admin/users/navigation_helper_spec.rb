require 'spec_helper'

describe Spree::Admin::Users::NavigationHelper do
  include Spree::Admin::NavigationHelper

  describe '.link_to_ban' do
    let(:user) { stub_model Spree::User }

    subject { helper.link_to_ban(user) }

    context 'when the user is banned' do
      before { user.stub(:banned?) { true } }
      it { should == link_to_with_icon('icon-undo', t(:unban), spree.ban_admin_user_path(user), {method: :post}) }
    end
    context 'when the user is not banned' do
      before { user.stub(:banned?) { false } }
      it { should == link_to_with_icon('icon-ban-circle', t(:ban), spree.ban_admin_user_path(user), {method: :post}) }
    end
  end
end
