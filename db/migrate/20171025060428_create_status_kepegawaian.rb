class CreateStatusKepegawaian < ActiveRecord::Migration[5.1]
  def change
    create_table :status_kepegawaian do |t|
      t.string :status_kepegawaian

      t.timestamps
    end
  end
end
