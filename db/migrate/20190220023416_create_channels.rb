class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.boolean :active, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
