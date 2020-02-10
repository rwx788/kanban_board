# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[6.0]
    def change
        create_table :tickets do |t|
            t.string   :title
            t.string   :tracker
            t.string   :external_id
            t.string   :url
            t.string   :statuses, :status, foreign_key: true, name: 'status_id_fk'
            t.timestamps
        end
        add_index :tickets, %i[tracker external_id], unique: true, name: 'external_id_index'
    end
end
