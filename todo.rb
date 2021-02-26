class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    task.info
  end

  def index
    if @tasks .empty?
      puts "【！】 タスクはありません。"
    else
      puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
      @tasks.each do |task|
        task.info
      end
      puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end
  end

  def delete(id:)

  task = @tasks.find{|task| task.id == id}

    if task
      @tasks.delete(task)
      task.info
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end

end