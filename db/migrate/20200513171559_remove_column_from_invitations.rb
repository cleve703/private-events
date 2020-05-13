class RemoveColumnFromInvitations < ActiveRecord::Migration[6.0]
  def change
    remove_column :invitations, :host, :boolean
  end
end
