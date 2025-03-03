class Api::V1::UsersController < ApplicationController
  # CSRFトークンの検証をスキップ
  # APIエンドポイントでは、トークンベースの認証を使用するため、CSRF保護は不要
  # skip_before_action :verify_authenticity_token

  # def create
  #   user = User.new(user_params)
  #   if user.save
  #     render json: { message: 'ユーザーが正常に作成されました' }, status: :created
  #   else
  #     render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # def login
  #   user = User.find_for_database_authentication(email: params[:email])
  #   if user&.valid_password?(params[:password])
  #     sign_in(user)
  #     render json: { message: 'ログインに成功しました' }, status: :ok
  #   else
  #     render json: { error: '無効なメールアドレスまたはパスワード' }, status: :unauthorized
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end
end 