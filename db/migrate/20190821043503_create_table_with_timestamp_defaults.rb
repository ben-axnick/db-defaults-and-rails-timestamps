class CreateTableWithTimestampDefaults < ActiveRecord::Migration[5.2]
  def change
    create_table :table_with_timestamp_defaults do |t|
      t.timestamps
    end

    change_column_default :table_with_timestamp_defaults, :created_at, to: "1970-01-01 00:00:00", from: nil
    change_column_default :table_with_timestamp_defaults, :updated_at, to: "1970-01-01 00:00:00", from: nil
  end
end
