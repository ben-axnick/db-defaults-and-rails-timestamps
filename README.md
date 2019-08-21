```
irb(main):001:0> TableWithTimestampDefaults.create!
   (0.2ms)  BEGIN
  TableWithTimestampDefaults Create (0.5ms)  INSERT INTO "table_with_timestamp_defaults" DEFAULT VALUES RETURNING "id"
   (2.0ms)  COMMIT
=> #<TableWithTimestampDefaults id: 2, created_at: "1970-01-01 00:00:00", updated_at: "1970-01-01 00:00:00">
irb(main):002:0> TableWithoutTimestampDefaults.create!
   (0.1ms)  BEGIN
  TableWithoutTimestampDefaults Create (1.5ms)  INSERT INTO "table_without_timestamp_defaults" ("created_at", "updated_at") VALUES ($1, $2) RETURNING "id"  [["created_at", "2019-08-21 04:
41:27.318142"], ["updated_at", "2019-08-21 04:41:27.318142"]]
   (0.9ms)  COMMIT
=> #<TableWithoutTimestampDefaults id: 1, created_at: "2019-08-21 04:41:27", updated_at: "2019-08-21 04:41:27">
```
