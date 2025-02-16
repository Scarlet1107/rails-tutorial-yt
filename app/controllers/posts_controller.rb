class PostsController < ApplicationController
  def index
    # PostというテーブルのPostレコードを全て取得して、@postsに代入。これによって、ビューのindex.htmlで@postsを使えるようになる。
    @posts = Post.all
  end
  def new
    @posts = Post.new
  end
end
