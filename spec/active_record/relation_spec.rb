# frozen_string_literal: true

RSpec.describe ActiveRecord::Relation do
  context '.relation_in' do
    let(:user) { User.new() }
    let(:post) { Post.new(user_id: user.id) }

    it 'has method' do
      ActiveRecord::Relation.method_defined? :relation_in
      Post.for_users(user.id).method_defined? :relation_in
    end
  end
end
