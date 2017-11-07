class AddPengomentarToKomentar < ActiveRecord::Migration[5.1]
  def change
    add_column :komentar, :pengomentar, :string
  end
end
