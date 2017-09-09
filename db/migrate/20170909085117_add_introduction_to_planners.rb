class AddIntroductionToPlanners < ActiveRecord::Migration
  def change
    add_column :planners, :introduction, :text
  end
end
