class InventoriesController < PagesController
    def show
        @inventory = Inventory.find(params[:player_id])
        @items = Item.all
             
           
        render :show
    
      end
end
