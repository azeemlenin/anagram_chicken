class AddLetterColumnToWords < ActiveRecord::Migration

  def change
    add_column :words, :letter, :integer
  end

end
