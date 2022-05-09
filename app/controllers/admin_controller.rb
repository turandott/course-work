class AdminController < ApplicationController
  before_action :can_access?

  def accounts
    @accounts = Account.where(admin: false).page(params[:page])
  end
  def can_access?
    @show_sidebar=true

    unless  current_account.admin?
      redirect_to root_url
    end
  end

end