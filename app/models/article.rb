class Article < ApplicationRecord
  belongs_to :article_category, class_name: 'ArticleCategory', foreign_key: 'article_categories_id'
end
