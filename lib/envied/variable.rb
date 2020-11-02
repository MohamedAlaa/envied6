class ENVied::Variable
  attr_reader :name, :type, :group

  def initialize(name, type, options = {})
    @name = name.to_sym
    @type = type.to_sym
    @group = options.fetch(:group, :default).to_sym
  end

  def ==(other)
    self.class == other.class &&
      [name, type, group] == [other.name, other.type, other.group]
  end
end
