class CreateTimeFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :time_frames do |t|
      t.integer :urgercy

      t.timestamps
    end
  end
end
