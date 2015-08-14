class CreateReferendums < ActiveRecord::Migration
  def change
    create_table :referendums do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
