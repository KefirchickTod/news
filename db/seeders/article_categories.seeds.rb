ArticleCategory.delete_all

5.times do |i|

  title = Faker::Hipster.sentence(word_count: 1).slice(0, 5)

  category = ArticleCategory.new(title: title, slug: title.parameterize)

  unless category.save
    raise category.errors
  end

end
