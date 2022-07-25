class UsersController < ApplicationController
  def edit #ビューファイルを表示するだけなので、アクションの定義のみ
  end

  def update #Userモデルの更新を行うアクション
    if current_user.update(user_params) #ストロングパラメーターを使用し、user_paramsを定義
      redirect_to root_path    
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email) #permitメソッドを使用し、「name」と「email」の編集を許可
  end
end
