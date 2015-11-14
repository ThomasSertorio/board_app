class AddDescriptionToExperts < ActiveRecord::Migration
  def change
    add_column :experts, :description, :text
  end
end
