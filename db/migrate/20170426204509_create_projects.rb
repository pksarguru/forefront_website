class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string  :team_name
      t.string  :location
      t.integer :area
      t.date    :completion_date
      t.text    :text

      t.timestamps
    end
  end
end
