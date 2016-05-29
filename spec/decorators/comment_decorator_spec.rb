require 'rails_helper'

RSpec.describe CommentDecorator do
  fixtures :comments

  let (:comment) { comments(:one) }

  it 'decorate the comment' do
    expect(comment.decorate).to be_decorated
    expect(CommentDecorator.new(comment)).to be_decorated
    expect(CommentDecorator.decorate(comment)).to be_decorated
  end

  it 'check decorated author h4 tag' do
    decorated_comment = comment.decorate
    expect(decorated_comment.author_h4).to include('media-heading')
  end
end