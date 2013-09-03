class CreateTsurls < ActiveRecord::Migration
  def change
    create_table :tsurls do |t|
      t.string :short
      t.string :full
      t.text :log

      t.timestamps
    end
  end
end
