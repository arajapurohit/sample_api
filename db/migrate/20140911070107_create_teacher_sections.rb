class CreateTeacherSections < ActiveRecord::Migration
  def change
    create_table :teacher_sections do |t|
      t.string :name
      t.integer :school_id

      t.timestamps
    end
  end
end
