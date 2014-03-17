class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.string :education
      t.string :experience
      t.string :employment
      t.string :time_schedule
      t.string :salary

      t.timestamps
    end
  end
end
