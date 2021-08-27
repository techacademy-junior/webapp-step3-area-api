class CreatePrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :prefectures do |t|
      t.integer :code
      t.string :name
      t.string :kana
      t.string :romaji

      t.timestamps
    end
  end
end
