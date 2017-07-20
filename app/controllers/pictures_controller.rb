class PicturesController < ApplicationController
    def new_form
        render("pic_templates/new_form.html.erb")
    end
    
    def create_row
        
        render("pic_templates/create_row.html.erb")
    end
    
    def index
        render("pic_templates/index.html.erb")
    end
    
    def show
       
       @pic = Photo.find(params["an_id"])
       
       render("pic_templates/show.html.erb")
    end
    
    def edit_form
        
        render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
        
        render("pics_template/update.html.erb")
    end
    
    def destroy_row
        
        render("pics_template/destroy.html.erb")
    end
end