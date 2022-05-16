class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.string :stub
      t.string :original_url

      t.timestamps
    end
  end
end
