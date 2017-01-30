class CreateImageExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :image_examples do |t|
      t.string :image_url
      t.string :output
      t.string :truth
      t.timestamps
    end
  end
end
