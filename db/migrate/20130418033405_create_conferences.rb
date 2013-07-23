class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.datetime :date
      t.string :place

      t.timestamps
    end
  end
end
