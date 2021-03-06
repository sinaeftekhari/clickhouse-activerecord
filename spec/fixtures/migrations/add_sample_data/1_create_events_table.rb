# frozen_string_literal: true

class CreateEventsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :events, options: 'MergeTree(date, (date, event_name), 8192)' do |t|
      t.string :event_name
      t.date :date
    end
  end
end

