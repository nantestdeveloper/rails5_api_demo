class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :author,:user_id,:post_id
end
