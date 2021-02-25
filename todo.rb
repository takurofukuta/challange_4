class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def index
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |task|
      puts "[No.#{task.id}] #{task.title}:#{task.content}"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(id:)

  task = @tasks.find{|task| task.id == id}

    if task
      @tasks.delete(task)
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end

end