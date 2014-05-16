class AddPic < ActiveRecord::Migration
  def change
    add_attachment :items, :pict
  end
end
