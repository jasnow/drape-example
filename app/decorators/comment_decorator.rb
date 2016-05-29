class CommentDecorator < Drape::Decorator
  include Drape::LazyHelpers

  delegate_all

  def author_h4
    content_tag :h4, object.author, class: 'media-heading'
  end
end
