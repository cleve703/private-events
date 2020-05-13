class AddColumnToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :creator, null: false, index: true, foreign_key: { to_table: :users }
  end
end
