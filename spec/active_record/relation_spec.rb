# frozen_string_literal: true

RSpec.describe ActiveRecord::Relation do
  context '.relation_in' do
    let(:user) { User.new() }
    let(:post) { Post.new(user_id: user.id) }

    it 'has method' do
      expect(ActiveRecord::Relation.method_defined? :relation_in).to be true
      expect(Post.for_users(user.id).method_defined? :relation_in).to be true
      byebug
      new_scope = Post.for_users(user.id).relation_in
      puts new_scope.to_sql
    end
  end
end
