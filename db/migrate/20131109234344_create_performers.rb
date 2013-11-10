class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :name
      t.references :talent
      t.integer :generation_number

    end
  end
end
