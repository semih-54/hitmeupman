class CreateHitmanSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :hitman_skills do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :hitman, null: false, foreign_key: true

      t.timestamps
    end
  end
end
