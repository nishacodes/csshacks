class CreateHacks < ActiveRecord::Migration
  def change
    create_table :hacks do |t|
      t.string :title
      t.text :css
      t.text :html
      t.text :html_display

      t.timestamps
    end
  end
end
