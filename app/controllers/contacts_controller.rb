class ContactsController < ApplicationController
  def index

  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path,notice: "ブログを作成しました"
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      
    else
      # 入力フォームを再描画します。
      render :new
    end
    
  end

  private

  def contact_params
    params.require(:contact).permit(:name,:email, :content)
  end
  
end
