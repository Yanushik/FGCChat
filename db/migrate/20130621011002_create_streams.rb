class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :name
      t.string :url
      t.string :misc

      t.timestamps
    end
  end
end
