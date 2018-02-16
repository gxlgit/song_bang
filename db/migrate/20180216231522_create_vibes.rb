class CreateVibes < ActiveRecord::Migration[5.1]
  def change
    create_table :vibes do |t|
      t.string :name, null: false
    end
  end
end
