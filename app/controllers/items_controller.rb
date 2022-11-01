class ItemsController < InventoriesController

    def index
        @items = Item.all
            render :index
          end

    def toggle_equipped
      @items = Item.find(params[:id])
         if @items.equipped == true
          @items.equipped =false
            redirect_to inventory_url
         else 
          @items.equipped = true
            redirect_to inventory_url
         end
        end
    def edit

        @items = Items.find(params[:id])
    
        render :edit
    
      end

end
