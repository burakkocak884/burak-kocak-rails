class BlogSerializer < ActiveModel::Serializer
    attributes :id, :username, :headline, :content, :date, :like, :dislike
  end