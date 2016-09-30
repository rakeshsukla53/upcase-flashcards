class TrailWithProgress < SimpleDelegator
  def initialize(trail)
    super
    @trail = trail
  end

  def incomplete?
    unstarted? || in_progress?
  end

  private

  def unstarted?
    # ...
  end

  def in_progress?
    # ...
  end
 end

# can you name the design patterns in ruby

