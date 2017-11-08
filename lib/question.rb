
class Question

  def initialize(questions)
    file = File.new(questions, "r:UTF-8")
    @questions = file.readlines
    file.close

    @number_question = 0 # Порядковая нумерация вопросов с 0
    @points = 0
  end

  def ask
    puts @questions[@number_question]
    user_input = nil

    until user_input == "yes" || user_input == "no" || user_input == "sometimes"
      puts "Введите 'yes', 'no' или 'sometimes' и нажмите Enter"
      user_input = STDIN.gets.chomp.downcase
    end

    # Увеличивает количество баллов в зависимости от выбранного ответа и ведет подсчет
    @points += 2 if user_input == "yes"
    @points += 0 if user_input == "no"
    @points += 1 if user_input == "sometimes"

    @number_question += 1

  end

  def finished?
    @number_question >= @questions.length
  end

  def result
    @points
  end
end
