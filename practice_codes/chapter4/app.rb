require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'
require 'securerandom'
require 'pry'
require 'pg'

enable :sessions

client = PG::connect(
  :host => "localhost",
  :user => "codebase", :password => '19980813',
  :dbname => "myapp",
  :port => 5433
)


get "/login" do
  return erb :login # loginのページを返す
end

post "/login" do # ログイン処理
  # DBへアクセスして、アカウントの情報と一致しているかを確認
  # 一致していたら、セッションにuser_idをセット
  # リダイレクトの処理
end

get "signup" do
  # アカウント新規作成のページを返す
end

post "signup" do
  #　アカウントに必要なデータを取得して、DBへ保存 
end


get "/memos" do # 自分のメモの一覧が見れる
  client.exec_params() # 自分のidを用いてDBから、自分の投稿を取得する
  # インスタンス変数（@hoge)にDBから持ってきたデータを代入。これをtop.erbファイルで表示する。
  erb :top
end

get "/memos/new" do # メモの新規作成ページ
  erb :new
end

post "/memos/new" do # title+contentのデータ保存
  title = params[:title]
  content = params[:content]
  client.exec_params("") # メモのタイトルと内容とuser_idをDBに保存
  redirect "/memos"
end

get "/memos/:id" do # メモの詳細ページ
  # memosのidを取得して、DBで検索。帰ってきたデータをインスタンス変数に代入して返す
  erb :memo # この子は編集もできるようなフォーム込みのerbを作成する
end

put "/memos/:id" do
  # 編集用のルーティング
  redirect "/memos"
end

delete "/memos/:id" do
  # 削除用のルーティング
  redirect "/memos"
end