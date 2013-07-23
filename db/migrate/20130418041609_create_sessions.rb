class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :speaker_id
      t.integer :conference_id
      t.string :title
      t.datetime :start_at
      t.integer :time_in_minutes
      t.text :abstract

      t.timestamps
    end
  end
end
