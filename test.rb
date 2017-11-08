require 'unicode'
require_relative 'lib/question'
require_relative 'lib/answers'
current_path = File.dirname(__FILE__)

name = ARGV[0]

if name == nil
  name = "Анонимус"
else
  name = name
end

puts "Добрый день, #{name}. Рад, что вы обратились к нашим услугам. Пожалуйста, ответьте"+
  " честно на несколько вопросов. А мы по завершению тестирование сформируем экспертное" +
       "заключение относительно вашей личности."

questions = current_path + "/data/questions.txt"
answers = current_path + "/data/answers.txt"

my_test = Question.new(questions)
your_answers = Answers.new(answers)

until my_test.finished?
  my_test.ask
end

your_answers.print_result(my_test)
