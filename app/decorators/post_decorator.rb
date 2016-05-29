class PostDecorator < Drape::Decorator
  delegate_all
  decorates_association :comments

  def title_h1
    h.content_tag :h1, object.title
  end

  def title_with_link
    helpers.link_to object.title, object
  end

  def created_at
    object.created_at.to_s(:short)
  end
end
