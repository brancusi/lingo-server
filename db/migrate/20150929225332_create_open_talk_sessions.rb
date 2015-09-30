class CreateOpenTalkSessions < ActiveRecord::Migration
  def change
    create_table :open_talk_sessions do |t|
      t.string :name
      t.string :session_id

      t.timestamps null: false
    end
  end
end
