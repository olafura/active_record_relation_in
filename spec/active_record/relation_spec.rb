# frozen_string_literal: true

RSpec.describe ActiveRecord::Relation do
  context '.relation_in' do
    let(:user) { User.new() }
    let(:post) { Post.new(user_id: user.id) }

    it 'has method' { post.for_user(user.id).method_defined? :relation_in }
  end
end
