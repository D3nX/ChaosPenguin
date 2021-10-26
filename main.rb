require_relative "./lib/omega"

require_relative "./monster.rb"
require_relative "./canon.rb"
require_relative "./chaospenguin.rb"
require_relative "./endstate.rb"
require_relative "./finalboss.rb"
require_relative "./firelayer.rb"
require_relative "./gamestate.rb"
require_relative "./knightpenguin.rb"
require_relative "./menustate.rb"
require_relative "./minimap.rb"
require_relative "./scenerystate.rb"
require_relative "./soldierpenguin.rb"



Gosu::enable_undocumented_retrofication

class Game < Omega::RenderWindow
    # For musics & sounds
    $font = Gosu::Font.new(25, name: "assets/BrushstrokeHorror-dEnX.ttf")
    
    $musics = {
        "menu" => Gosu::Song.new("assets/musics/Chaos Penguin - Menu.mp3"),
        "game" => Gosu::Song.new("assets/musics/Chaos Penguin - Game.mp3")
    }

    $sounds = {
        "walk" => Gosu::Sample.new("assets/sounds/chaos_penguin_walk.wav"),
        "jump" => Gosu::Sample.new("assets/sounds/chaos_penguin_jump.wav"),
        "death" => Gosu::Sample.new("assets/sounds/chaos_penguin_death.wav"),
        "land" => Gosu::Sample.new("assets/sounds/chaos_penguin_land.wav"),
        "attack" => Gosu::Sample.new("assets/sounds/chaos_penguin_attack.wav"),
        "hit" => Gosu::Sample.new("assets/sounds/hit.wav"),
        "bullet" => Gosu::Sample.new("assets/sounds/bullet.wav"),
        "vortex_spawn" => Gosu::Sample.new("assets/sounds/vortex_spawn.wav")
    }

    def load
        $game = self

        Omega.set_state(MenuState.new)
    end

end

Omega.run(Game, "config.json")