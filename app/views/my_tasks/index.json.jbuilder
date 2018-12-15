json.my_tasks @my_tasks do | my_task |
  json.my_task do
    json.id my_task.id
    json.user_id my_task.user_id
    json.task_id my_task.task_id
    json.due_date my_task.due_date
    json.completed my_task.completed
    json.frequency my_task.frequency
    json.notes my_task.notes
  end

  json.task do
    json.id my_task.task.id
    json.title my_task.task.title
    json.description my_task.task.description
    json.category my_task.task.category
    json.sub_category my_task.task.sub_category

  end

end
