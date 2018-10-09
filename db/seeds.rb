require active_record
require activerecord-import

jsons = [["db/university_jsons/instructor.json", "instructor"], ["db/university_jsons/course.json", "course"], ["db/university_jsons/subject.json", "subject"]]

jsons.each do |json|
    type = json[1]
    dataSet = JSON.parse(File.read(json[0]))
    dataSet.each {|data| data['uniq_id'] = data.delete('id')}
    if type == 'course'
        Course.import dataSet, validate:false
    elsif type == 'instructor'
        Instructor.import dataSet, validate:false
    elsif type == 'subject'
        Subject.import dataSet, validate:false
    end
end
    