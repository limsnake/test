class Answers

  def initialize(answers)
    file = File.new(answers, "r:UTF-8")
    @results = file.readlines
    file.close
  end

  # Метод, который выводит результат в зависимости от набранных баллов
  def print_result(question)
    puts "\nВаш результат теста (ответов 'да' - #{question.result}):"

    case question.result
    when 30..32
      puts @results[0]
    when 25..29
      puts @results[1]
    when 19..24
      puts @results[2]
    when 14..18
      puts @results[3]
    when 9..13
      puts @results[4]
    when 4..8
      puts @results[5]
    else
      puts @results[6]
    end
  end
end
