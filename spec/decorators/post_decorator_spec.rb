require 'rails_helper'

RSpec.describe PostDecorator do
  fixtures :posts
  fixtures :comments

  let (:post) { posts(:one) }

  it 'decorate the post' do
    expect(post.decorate).to be_decorated
    expect(PostDecorator.new(post)).to be_decorated
    expect(PostDecorator.decorate(post)).to be_decorated
  end

  it 'check decorated title with h1' do
    decorated_post = post.decorate
    expect(decorated_post.title_h1).to include('<h1>')
  end

  it 'check decorated title with link' do
    decorated_post = post.decorate
    expect(decorated_post.title_with_link).to include('<a')
  end

  it 'check decorated comments association' do
    decorated_post = post.decorate
    expect(decorated_post.comments.first).to be_decorated
  end
end