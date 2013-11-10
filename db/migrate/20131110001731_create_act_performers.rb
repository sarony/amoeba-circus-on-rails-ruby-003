class CreateActPerformers < ActiveRecord::Migration
  def change
    create_table :act_performers do |t|
      t.references :performer, index: true
      t.references :act, index: true


    end
  end
end
