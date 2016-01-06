# 001_init_db.rb
Sequel.migration do
  up do
    create_table(:authors) do
      primary_key :id
      String :name
    end

    create_table(:posts) do
      primary_key :id
      String :body

      # many to one with authors
      foreign_key :author_id, :authors
    end
  end

  down do
    drop_table(:posts)
    drop_table(:authors)
  end
end
