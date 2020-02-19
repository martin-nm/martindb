class AddFieldsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :book_title, :string
    add_column :books, :book_author, :string
    add_column :books, :read, :string
    add_column :books, :read_date, :datetime
    add_column :books, :rating, :int
    add_column :books, :recco_by, :string
  end
end
