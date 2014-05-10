class CreateTaggings123 < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :item_id
      t.integer :tag_id
    end

    add_index(:taggings, :item_id)
    add_index(:taggings, :tag_id)
  end
end
