class CurrencyController < ApplicationController
  def show
    @currency = Currency.where(short_name: params[:id]).first
  end
end
