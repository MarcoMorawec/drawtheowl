class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
    	t.string "name"
    	t.string "twitterhandle"
    	t.string "email", :default => "", :null => false
    	t.text "advice", :limit => 140

      t.timestamps
    end
  end
end
