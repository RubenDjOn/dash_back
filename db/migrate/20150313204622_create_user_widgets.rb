class CreateUserWidgets < ActiveRecord::Migration
  def change
    create_table :user_widgets do |t|
      t.integer :user_id
      t.integer :widget_id
      t.text :config
      t.string :color

      t.timestamps null: false
    end
  end
end
