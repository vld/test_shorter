class TsurlsController < ApplicationController

  def index
    @tsurl = Tsurl.all
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

    if @tsurl.save
      redirect_to tsurls_path, notice: 'Tsurl was successfully created.'
    else
      render action: "new" 
    end
  end

end
