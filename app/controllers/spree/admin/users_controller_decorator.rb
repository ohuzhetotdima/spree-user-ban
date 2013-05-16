Spree::Admin::UsersController.class_eval do
  helper 'spree/admin/users/navigation'

  def ban
    @user.toggle!(:banned)
    redirect_to admin_users_path
  end
end
