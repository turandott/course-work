class PublicController < ApplicationController
  def main
    if account_signed_in?
    path = current_account.admin? ? accounts_path : properts_path
    end
    @properts=Propert.latest
  end
end
