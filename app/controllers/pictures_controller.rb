class PicturesController < ApplicationController
    def new_form
        render("pic_templates/new_form.html.erb")
    end
    
    def create_row
        render("pic_templates/create_row.html.erb")
    end
end