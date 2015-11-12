class AddReleaseDataToBook < ActiveRecord::Migration
  def change
    add_column :books, :releast_data, :string
  end
end
