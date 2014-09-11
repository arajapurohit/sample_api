class CreateSchoolSections < ActiveRecord::Migration
  def change
    create_table :school_sections do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
