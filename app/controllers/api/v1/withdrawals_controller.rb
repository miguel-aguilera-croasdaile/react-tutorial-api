class Api::V1::WithdrawalsController < ActionController::Base

  def index
    @withdrawals = Withdrawal.order(created_at: :desc)
    render json: @withdrawals
  end

  def show
    @withdrawal = Withdrawal.find(params[:id])
    render json: @withdrawal
  end

  def create
    @withdrawal = Withdrawal.create(withdrawal_params)
    @withdrawal.user = current_user

    if @withdrawal.save!
      render :json => {:status => 200}
    else
      raise
    end
  end

  private

  def withdrawal_params
    params.require(:withdrawal).permit(:currency, :amount, :fee)
  end

end
