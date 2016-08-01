require "spec_helper"
require "dashboard"

describe Dashboard do
  describe "#posts" do
    it "returns posts visible to the current user" do
      user = create(:user)
      posts = double(posts)
      allow(Post).to receive("visible_to").with(user).and_return(posts)
      dashboard = Dashboard.new(posts: Post.all, user: user)


      expect(dashboard.posts).to eq(posts)
    end
  end
end
