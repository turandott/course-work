class DashboardController < ApplicationController
  before_action :set_sidebar


  def index
    @properts = current_account.properts.all
  end

  def profile
    @account = Account.find(params[:id])
    @properts = Propert.where(account_id: @account.id)

    @properts_sold = Propert.where(account_id: @account.id).sold.count
    @properts_for_sale = Propert.where(account_id: @account.id).for_sale.count
    @properts_leased = Propert.where(account_id: @account.id).leased.count
    @properts_for_rent = Propert.where(account_id: @account.id).for_rent.count
  end


  private

  def set_sidebar
    @show_sidebar = true if account_signed_in?
  end
end
