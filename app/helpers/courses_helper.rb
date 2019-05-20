module CoursesHelper
  def replace_id_array(model, id_array)
    id_array.map! do |i|
      i = model.find(i)
    end
  end

  def assign_to_course_params(hash)
    hash.each do |key, value|
      @course_params[key] = value
    end
  end
end
