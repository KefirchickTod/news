class ArticleCategory < ApplicationRecord
  has_many :articles, :autosave => true

end
