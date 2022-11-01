class PagesController < ApplicationController

    before_action :authenticate_player!, except: [:welcome, :about]

    def welcome
        render :welcome
    end

    def about
        render :about
    end

    def help
        render :help
    end

    def village
        render :village
    end

    def arena
        render :arena
    end

    def battleai
        render :battleai
    end

    def battleplayer
        render :battleplayer
    end

    def edit
        @player = Player.find(params[:player_id])
        render :edit_player_name
    end

    def update
        @player = current_player
        if @player.update(params.require(:player).permit(:player_name))
           flash[:success] = "Your Player name has been changed"
           redirect_to village_url
        else
           flash[:error] = "Something went horribly wrong"
           render :edit
        end
    end


    def add_friend
        @player = Player.find(params[:player_id])
        @friend = Friend.new
        render :new_friend
    end

    def create_friend
        @player = current_player
        @friend = @player.friends.build(params.require(:friend).permit(:email, :player_name, :identification_number))
        if @friend.save
            flash[:success] = "Friend successfully added!"
            redirect_to village_url
        else
            flash[:error] = "Friend was not added!"
            render :new_friend
        end
    end

    def destroy
        @friend = Friend.find_by(identification_number: params[:identification_number])
        @friend.destroy
        flash[:success] = "Friend was removed susccessfully!"
        redirect_to village_url
    end

    def random_number
        #inclusive number between 1 and 3 /Nate
        number1 = rand(1..3)
        number2 = rand(1..3)
        if number1 > number2

            flash[:notice] = "You actually won. You lucky dog."

            current_player.wallet += 10
            current_player.player_rank += 2
            current_player.player_wins += 1
            # Took me minute to rememeber the values above are deemed dirty. You have to save it. /Nate
            current_player.save
            redirect_to battleai_url
        elsif number1 < number2
            flash[:error] = "Torg won."

            if current_player.wallet != 0
                current_player.wallet -= 5
                current_player.player_rank += 0
                current_player.player_loses += 1
                current_player.save
            end
            redirect_to battleai_url
        else 

            flash[:warn] = "You and Torg tied."

            current_player.player_rank += 1
            redirect_to battleai_url

        end

    end

  

end
