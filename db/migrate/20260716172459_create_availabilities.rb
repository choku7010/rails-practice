class CreateAvailabilities < ActiveRecord::Migration[7.2]
  def change
    create_table :availabilities do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :min_wage
      t.string :category

      t.timestamps
    end
  end
end
