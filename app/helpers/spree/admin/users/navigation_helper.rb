module Spree
  module Admin
    module Users
      module NavigationHelper
        include Spree::Admin::NavigationHelper

        def link_to_ban(user, options={})
          if user.banned?
            icon = 'fa-undo'
            text = t(:unban)
            alt = t(:ban)
          else
            icon = 'fa-ban'
            text = t(:ban)
            alt = t(:unban)
          end

          options = {
            method: :post,
            remote: true,
            class: 'user-ban-link',
            data: {alt: alt, action: text.downcase}
          }.update(options)
          link_to_with_icon(icon, text, spree.ban_admin_user_path(user, format: :json), options)
        end
      end
    end
  end
end
