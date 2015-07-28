class CreateIndex < ActiveRecord::Migration
  def change
    add_index(:words, :index)
  end
end
