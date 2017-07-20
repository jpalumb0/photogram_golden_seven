class PicturesController < ApplicationController
    def new_form
        render("pic_templates/new_form.html.erb")
    end
    
    def create_row
       
        source = params["the_source"]
        caption = params["the_caption"]
        
        p = Photo.new
        
        p.source = source
        p.caption = caption
        
        p.save
        
        render("pic_templates/create_row.html.erb")
    end
    
    def index
        
        @photos = Photo.all.order(created_at: :desc)
        render("pic_templates/index.html.erb")
    end
    
    def show
       
       @pic = Photo.find(params["an_id"])
       
       render("pic_templates/show.html.erb")
    end
    
    def edit_form
        
        @pic = Photo.find(params["some_id"])
        
        render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
        
        @pic = Photo.find(params["the_id"])
        
        new_source = params["the_source"]
        new_caption = params["the_caption"]
        
        @pic.source = new_source
        @pic.caption = new_caption
        
        @pic.save
        
        render("pic_templates/update.html.erb")
    end
    
    def destroy_row
        
        url = "/delet"
        
        render("pics_template/destroy.html.erb")
    end
end