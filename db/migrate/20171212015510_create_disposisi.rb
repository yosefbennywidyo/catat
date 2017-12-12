class CreateDisposisi < ActiveRecord::Migration[5.1]
  def change
    create_table :disposisi do |t|

      t.timestamps
    end
  end
end
