class TsurlsController < ApplicationController

  def show

  end

  def new
    @tsurl = Tsurl.new
  end

  def redir
    @tsurl = Tsurl.find_by_short!(params[:short])
    @tsurl.add_to_log(request)
    redirect_to @tsurl.full
  end

  def create
    @tsurl = Tsurl.new(params[:tsurl])

    respond_to do |format|
      if @tsurl.save
        format.html { redirect_to @tsurl, notice: 'Tsurl was successfully created.' }
        format.json { render json: @tsurl, status: :created, location: @tsurl }
      else
        format.html { render action: "new" }
        format.json { render json: @tsurl.errors, status: :unprocessable_entity }
      end
    end
  end

end
