class AddMentoringColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :wants_mentoring, :boolean
    add_column :users, :can_mentor, :boolean
  end
end
