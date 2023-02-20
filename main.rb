require_relative './author.rb'
require_relative './magazine.rb'
require_relative './article.rb'

# Sample instances

author1 = Author.new("Chris Junior")
author2 = Author.new("Will Smith")
author3 = Author.new("Dave Dee")

magazine1 = Magazine.new("Fashion Today", "Fashion")
magazine2 = Magazine.new("Tech News", "Technology")
magazine3 = Magazine.new("Travel Magazine", "Travel")

article1 = Article.new(author1, magazine1, "The Future of Fashion Tech")
article2 = Article.new(author2, magazine2, "The Rise of Artificial Intelligence")
article3 = Article.new(author1, magazine3, "10 Must-See Destinations for Solo Travelers")
article4 = Article.new(author1, magazine2, "The Pros and Cons of Working Remotely")
article5 = Article.new(author2, magazine2, "How to Build a Chatbot from Scratch")


# Test author methods
puts author1.name 
puts author1.articles.count 
puts author1.magazines.count 
puts author1.topic_areas 

# Test magazine methods
puts magazine2.name 
puts magazine2.category 
puts magazine2.contributors.count 
puts Magazine.all

# test article methods
puts article3.title 
puts article3.author.name




# Testing Associations and Aggregate Methods

# Author#add_article(magazine, title)
author1.add_article(magazine2, "The Importance of Cybersecurity for Remote Workers")
author2.add_article(magazine1, "Fall Fashion Trends for 2021")
author2.add_article(magazine3, "Volunteering Abroad: My Life-Changing Experience")
author3.add_article(magazine2, "The Importance of Bitcoin")


# Author#topic_areas
puts author1.topic_areas

# Magazine.find_by_name(name)
puts Magazine.find_by_name("Tech News")


# Magazine#article_titles
puts magazine2.article_titles


# Magazine#contributing_authors
puts magazine2.contributing_authors



