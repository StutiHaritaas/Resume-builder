class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :name
      t.string :job_title
      t.string :Years_Of_Experience
      t.string :primary_skiils
      t.string :secondary_skills
      t.string :company
      t.string :position
      t.date :start_date
      t.date :end_date
      t.string :description
      t.string :title
      t.string :tech_stack
      t.string :desc
      t.string :school_name
      t.string :degree
      t.float :grade

      t.timestamps
    end
  end
end
