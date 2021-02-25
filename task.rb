class Task
  @@count = 0

  attr_accessor :id, :title, :content

  def initialize(title:, content:)
    @id = @@count + 1
    @title = title
    @content = content

    @@count += 1
  end
end
