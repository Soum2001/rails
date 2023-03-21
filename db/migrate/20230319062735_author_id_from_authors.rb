class AuthorIdFromAuthors < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :author_id, :integer
  end
end
