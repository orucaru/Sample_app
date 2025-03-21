
class TweetsController < ApplicationController
  # ツイート一覧を表示するアクション
  def index
    @tweets = Tweet.all
  end

  # ツイートを新規作成するアクション
  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
      redirect_to root_path, notice: 'ツイートが投稿されました！'
    else
      redirect_to root_path, alert: 'ツイートの投稿に失敗しました。'
    end
  end

  private

  # ツイートのパラメータを受け取る
  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
