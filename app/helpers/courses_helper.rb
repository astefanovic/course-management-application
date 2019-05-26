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

  # Returns a string representing how long ago
  def time_since(started_at)
    diff = ActiveSupport::Duration.build(Time.now - started_at)
    # Parts hash goes through year to month etc.
    diff.parts.each do |part_name, part|
      if part > 1
        return "#{part} #{part_name}"
      end
    end

    return "0 seconds"
  end
end
