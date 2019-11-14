class AddCounterToStory < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :clap, :integer, default: 0
  end
end
