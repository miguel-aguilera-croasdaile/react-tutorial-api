class PagesController < ApplicationController
  def home
    @withdrawals = Withdrawal.all
  end
end
