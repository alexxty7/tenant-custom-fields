# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name

      t.references :tenant, foreign_key: true
      t.timestamps
    end
  end
end
