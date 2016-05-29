post_1 = Post.create!(title: 'Ruby 3.0 Released', body: 'Lorem Ipsum is simply dummy text of the printing ...')
post_1.comments.create!(author: 'Andrew Emelianenko', text: 'Awesome!')
post_1.comments.create!(author: 'Jeff Casimir', text: 'Great!')

post_2 = Post.create!(title: 'Rails 5.0 will be released at 2017', body: 'Lorem Ipsum is ...')
post_2.comments.create!(author: 'Steve Klabnik', text: 'Are you kidding!?')
