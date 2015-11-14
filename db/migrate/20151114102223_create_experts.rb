class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.string :name
      t.text :tagline
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end
