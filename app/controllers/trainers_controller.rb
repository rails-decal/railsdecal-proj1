  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def update
  	@trainer = Trainer.find(params[:id])
  	if @trainer.save
  		redirect_to :trainer
  	else
  		render 'new'
  	end
  end

  

end
