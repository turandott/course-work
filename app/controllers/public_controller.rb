class PublicController < ApplicationController
  def main
    @properts=Propert.latest

  end
end
