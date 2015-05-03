GardenMemo::Application.routes.draw do

  # ルート
  root to: "top#index"

  # トップページ
  get "top/index"

  # マイページ
  get "mypage/index"

  # 区画管理画面
  resource :section

  # 日誌画面
  resource :diary

  # 品種管理画面
  resource :plant

  # カレンダー詳細画面
  resource :calendar

  # 設定画面
  get "setting/index"

  # みんなのガーデン画面
  get "everyone_gardens/index"
end

