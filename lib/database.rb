class Database
  def initialize
    @entities = []
  end

  def insert(entity) #user
    entity = entity.dup
    entity[:id] = next_id

    @entities.push(entity)

    entity.dup
  end

  def all
    @entities.dup
  end