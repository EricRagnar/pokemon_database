class CreateTypeStrengths < ActiveRecord::Migration[7.0]
  def change
    create_table :type_strengths do |t|
      t.string :name
      t.string :strengths

      t.timestamps
    end
  end
end
