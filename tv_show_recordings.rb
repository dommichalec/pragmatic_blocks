class TVShowRecordings
  def initialize(name)
    @name = name
    @shows = []
  end

  def record_show(show)
    @shows << show
  end

  def each
    @shows.each { |show| yield(show) }
  end
end

queue = TVShowRecordings.new("Documentaries")
queue.record_show("a")
queue.record_show("b")

queue.each { |show| puts show }
