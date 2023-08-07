# frozen_string_literal: true

RSpec.describe ActiveRecordRelationIn do
  it "has a version number" do
    expect(ActiveRecordRelationIn::VERSION).not_to be nil
  end

  context '.relation_in' do
    let(:user) { User.new() }
    let(:post) { Post.new(user_id: user.id) }

    it 'has method' { method_defined? :relation_in }
  end
end
