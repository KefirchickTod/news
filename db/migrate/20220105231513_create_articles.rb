class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|

      t.string :title, comment: "Article name"
      t.text :short_text, :slug
      t.text :full_text, default: "Full content of article"
      t.integer :public, :limit => 2, default: 1, comment: "Published article?"

      t.integer :author_id, comment: "Author current article"

      t.timestamps


      t.belongs_to :article_categories, foreign_key: true


    end
  end
end
