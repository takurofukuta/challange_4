class Task
  @@count = 0

  attr_reader :id, :title, :content

  def initialize(title:, content:)
    @id = @@count += 1
    @title = title
    @content = content
  end

  def info
    puts "【追加】[No.#{@id}] #{@title}:#{@content}"
  end
end
