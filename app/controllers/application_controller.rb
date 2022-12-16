class ApplicationController < ActionController::Base
  # ログインしていないとログイン画面へリダイレクトする
  # before_action :authenticate_user!, except: [:top]
  
  
  # # ユーザー登録、ログイン認証が使われる前に、configure_permitted_parametersメソッドを実行する
  # before_action :configure_permitted_parameters, if: :devise_controller?

 

  # # サインアウト後の遷移先をトップページへ
  # def after_sign_out_path_for(resource)
  #   root_path
  # end
  
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_path
    when User
      content_reviews_path
    end
  end


  def after_sign_out_path_for(resource)
    if resource == :admin
      new_admin_session_path
    else
      root_path
    end
  end

  # protected
  # # ユーザー登録の際に、ユーザー名のデータ操作の許可をしている
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  # end

end
