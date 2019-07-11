def my_func(st ="")
  if st.empty?
    "shit1 you passed an empty string"
  else
    "There was something here it is '#{st}'"
  end
end
puts my_func(st="")
puts my_func(st="Hello there")
