class CreateStatus < ActiveRecord::Migration[5.1]
  def change
    create_table :status do |t|
      t.string :status_type
      t.string :string

      t.timestamps
    end
  end
end
