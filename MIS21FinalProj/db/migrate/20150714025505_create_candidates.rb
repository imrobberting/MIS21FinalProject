class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.text :slogan
      t.references :position, index: true

      t.timestamps null: false
    end
    add_foreign_key :candidates, :positions
  end
end
