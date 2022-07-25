class RoomsController < ApplicationController
  def new #チャットルームの新規作成なので「new」アクションを定義
    @room = Room.new
  end
end
