class PublicController < ApplicationController
  def main
    if account_signed_in?
    path = current_account.admin? ? accounts_path : properts_path
    redirect_to path and return
    end
    @properts = Propert.latest
    @posts = Post.latest

  end
end
