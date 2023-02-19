class Player
  attr_writer :token
  def initialize(player, token)
    @player = player
    @token = token
  end

  def token
    @token
  end

  def to_s
    @player
  end
end
