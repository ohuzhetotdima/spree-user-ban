Deface::Override.new(
  virtual_path: "spree/admin/users/index",
  name: "admin_users_ban_action",
  insert_top: "[data-hook='admin_users_index_row_actions']",
  text: "<%= link_to_ban user, :no_text => true %>"
)
