require_dependency 'spree/base_controller'
Spree::BaseController.class_eval do
  before_filter :verify_banned!

  def verify_banned!
    if spree_current_user.present? && spree_current_user.banned?
      sign_out spree_current_user
      flash.clear
      flash.now[:error] = t(:account_banned)
    end
  end
end
