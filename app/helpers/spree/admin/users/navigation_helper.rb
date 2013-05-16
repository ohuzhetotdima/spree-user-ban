module Spree
  module Admin
    module Users
      module NavigationHelper
        def link_to_ban(user, options={})
          options[:method] ||= :post
          if user.banned?
            icon = 'icon-undo'
            text = t(:unban)
          else
            icon = 'icon-ban-circle'
            text = t(:ban)
          end
          link_to_with_icon(icon, text, ban_admin_user_path(user), options)
        end
      end
    end
  end
end
