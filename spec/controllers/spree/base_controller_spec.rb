require 'spec_helper'

describe Spree::BaseController do

  controller(Spree::BaseController) do
    def index
      render text: 'test'
    end
  end

  describe '.verify_banned!' do
    let(:user) { create :user }

    before { controller.stub spree_current_user: user }

    context 'when the user is banned' do
      before { user.stub banned?: true }
      it 'should sign out the current spree user' do
        controller.should_receive :sign_out
        spree_get :index
      end
    end
    context 'when the user is not banned' do
      before { user.stub banned?: false }
      it 'should behave like a normal request' do
        spree_get :index
        response.body.should == 'test'
      end
    end
  end
end
