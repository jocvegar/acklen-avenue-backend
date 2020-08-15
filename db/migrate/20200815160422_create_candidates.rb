class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_email
      t.string :email
      t.string :slug
      t.string :status

      t.timestamps
    end
  end
end
