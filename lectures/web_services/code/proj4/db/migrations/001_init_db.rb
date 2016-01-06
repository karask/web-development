# 001_init_db.rb
Sequel.migration do
  up do
    create_table(:tasks) do
      primary_key :id
      String :description
    end
  end

  down do
    drop_table(:tasks)
  end
end
