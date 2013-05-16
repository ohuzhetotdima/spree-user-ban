require_dependency 'spree/base_controller'
Spree::BaseController.class_eval do
  before_filter :verify_banned!

  def verify_banned!
    if current_user.present? && current_user.banned?
      sign_out current_user
      flash.clear
      flash.now[:error] = t(:account_banned)
      root_path
    end
  end
end
