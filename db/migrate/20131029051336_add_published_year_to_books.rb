class AddPublishedYearToBooks < ActiveRecord::Migration
  def change
    add_column :books, :published_date, :integer
  end
end
