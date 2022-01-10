ArticleCategory.delete_all

5.times do |i|

  title = Faker::Hipster.sentence(word_count: 1)

  ArticleCategory.create title: title, slug: title.parameterize

end
