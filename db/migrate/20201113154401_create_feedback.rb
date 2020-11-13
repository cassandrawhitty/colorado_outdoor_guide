class CreateFeedback < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :feedback_num
      t.string :feedback_words
    end
  end
end
