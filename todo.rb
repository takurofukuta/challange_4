class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】[No.#{task.id}] #{task.title}:#{task.content}"
  end

  def index
    if @tasks .empty?
      puts "【！】 タスクはありません。"
    else
      puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
      @tasks.each do |task|
        puts "[No.#{task.id}] #{task.title}:#{task.content}"
      end
      puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end
  end

  def delete(id:)

  task = @tasks.find{|task| task.id == id}

    if task
      @tasks.delete(task)
      puts "【削除】[No.#{task.id}] #{task.title}:#{task.content}"
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end

end