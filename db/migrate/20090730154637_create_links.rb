class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.text        :url
      t.integer     :list_id
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
