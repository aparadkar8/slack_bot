class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.string :title
      t.string :description
      t.string :severity
      t.string :status, default: 'open'
      t.timestamps
    end
  end
end
