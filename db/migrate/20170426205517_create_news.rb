class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.text       :text
      t.belongs_to :user

      t.timestamps
    end
  end
end
