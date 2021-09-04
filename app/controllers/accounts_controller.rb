class AccountsController < ApplicationController
  before_action :find_account, only: [:show, :update, :destroy]

  def index
      @accounts = Account.where(user_id: current_user)
      render json: @accounts
  end

  def show
    render json: @account
  end

  def new
      @account = current_user.accounts.build
  end

  def create
      @account = current_user.accounts.build(account_params)
      if @account.save
          render json: @account, { message: 'You have successfully created an account!' }, status: :created
      else
          render json: { message: 'Error creating account' }, status: :bad_request
      end
  end

  def update
      if @account.update(account_params)
          render json: @account, { message: 'You have successfully updated an account!' }, status: :ok
      else
          render json: { message: 'Error updating account' }, status: :bad_request
      end
  end

  def destroy
    if @account.destroy
      render json: @accounts, { message: 'Account went bye-bye.'}, status: :ok
    else
      render json: {message: 'Oops...something went wrong'}
    end
  end

  private

  def find_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:name, :balance)
  end

end
