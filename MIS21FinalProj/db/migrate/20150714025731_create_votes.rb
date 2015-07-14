class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :User, index: true
      t.references :Candidate, index: true
      t.text :comments

      t.timestamps null: false
    end
    add_foreign_key :votes, :Users
    add_foreign_key :votes, :Candidates
  end
end
