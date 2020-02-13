# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[6.0]
    def change
        create_table :tickets do |t|
            t.string   :title
            t.string   :tracker, null: false
            t.string   :external_id, null: false
            t.string   :url, null: false
            t.string   :priority
            t.string   :assignee
            t.integer  :position, null: false
            t.integer  :lock_version
            t.references :status, foreign_key: true, index: true, null: false, name: 'status_id_fk'
        end
        add_index :tickets, [:tracker, :external_id], unique: true, name: 'external_id_index'
    end
end
