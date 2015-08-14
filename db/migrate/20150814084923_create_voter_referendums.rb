class CreateVoterReferendums < ActiveRecord::Migration
  def change
    create_table :voter_referendums do |t|
      t.references :voter, index: true, foreign_key: true
      t.references :referendum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
