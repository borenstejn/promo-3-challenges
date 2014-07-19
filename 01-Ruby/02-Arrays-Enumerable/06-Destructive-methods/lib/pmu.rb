def pmu_format!(race_array)
  race_array.each_with_index do |item, index|
     race_array[index] = "#{index+1}-#{item}!"
  end
  #TODO: modify the given array so that it is PMU-consistent
  return race_array.reverse!
end



