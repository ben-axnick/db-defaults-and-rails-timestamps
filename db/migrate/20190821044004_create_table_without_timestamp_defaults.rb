class CreateTableWithoutTimestampDefaults < ActiveRecord::Migration[5.2]
  def change
    create_table :table_without_timestamp_defaults do |t|
      t.timestamps
    end
  end
end
