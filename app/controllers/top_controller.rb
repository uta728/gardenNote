class TopController < ApplicationController

  def index

    # サインイン済みならマイページへリダイレクトする
    if user_signed_in? then
      redirect_to mypage_index_path
    end
  end
end
