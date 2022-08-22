class CreateNoticia < ActiveRecord::Migration[7.0]
  def change
    create_table :noticia do |t|
      t.string :title
      t.date :fecha
      t.text :description

      t.timestamps
    end
  end
end
