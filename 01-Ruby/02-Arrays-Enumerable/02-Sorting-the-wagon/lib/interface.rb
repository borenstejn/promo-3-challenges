require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  students << name if name!=""

  # TODO: Add the name we just gotto the students array

end while name != ""

students_list = wagon_sort(students)
students_string = students_list[0..-2].join(", ")
puts "Congrats! Your Wagon has #{students_list.count} students : #{students_string} and #{students_list.last}"


#effectif = students.count
#studentsbis = students
#studentsbis.delete_at(effectif-1)




# TODO: Call `wagon_sort` method and display the sorted student list
