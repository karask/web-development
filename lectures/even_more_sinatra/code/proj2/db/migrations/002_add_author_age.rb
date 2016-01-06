# 002_add_author_age.rb
Sequel.migration do
  change do
    alter_table(:authors) do
      add_column :age, Integer
    end
  end
end
