class AddDescriptionToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :decription, :text
  end
end
