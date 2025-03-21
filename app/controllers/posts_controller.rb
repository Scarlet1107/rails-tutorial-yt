class PostsController < ApplicationController
  def index
    # PostというテーブルのPostレコードを全て取得して、@postsに代入。これによって、ビューのindex.htmlで@postsを使えるようになる。
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  # 通常newとcreateはセットで使用される
  def create
    @post = Post.new(post_params)
    if @post.save
          redirect_to posts_path
    else
       render :new
    end
  end

  # post_paramsはpost controllerでしか呼び出せないようにする
  private
  def post_params
        params.require(:post).permit(:title, :content)
  end
end
