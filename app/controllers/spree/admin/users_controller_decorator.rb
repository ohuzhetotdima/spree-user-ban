require_dependency 'spree/admin/users_controller'
Spree::Admin::UsersController.class_eval do
  helper 'spree/admin/users/navigation'

  respond_to :json, only: [:ban]

  def ban
    @user.toggle!(:banned)
    respond_with(@user)
  end
end
