class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :slug, index: true, unique: true
      t.string :status

      t.timestamps
    end
  end
end
