class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string   :status, unique: true, index: true
    end
  end
end
