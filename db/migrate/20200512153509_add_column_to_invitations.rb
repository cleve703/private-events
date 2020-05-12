class AddColumnToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :host, :boolean
  end
end
