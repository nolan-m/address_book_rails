class PhonesController < ApplicationController
  def new
    contact = Contact.find(params[:contact_id])
    @phone = contact.phones.new
    render('phones/new.html.erb')
  end

  def create
    @phone = Phone.new(:number => params[:number],
                        :contact_id => params[:contact_id])
    if @phone.save
      render('phones/success.html.erb')
    else
      render('phones/new.html.erb')
    end
  end

  def edit
    @phone = Phone.find(params[:id])
    render('phones/edit.html.erb')
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update(:number => params[:number])
      render('phones/success.html.erb')
    else
      render('phones/edit.html.erb')
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    render('phones/destroy.html.erb')
  end

end
