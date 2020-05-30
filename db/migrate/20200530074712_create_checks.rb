class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.text :title, null: false
      t.text :explanation, null: false
      t.text :template_text, null: false
      t.timestamps
    end
  end
end
