class TaskListViewController < UITableViewController
  TASK_CELL_ID = "TaskCell"

  def loadView
    super
    tableView.registerClass(UITableViewCell, forCellReuseIdentifier: TASK_CELL_ID)
    self.title = "Tasks"
  end

  def tableView(_, numberOfRowsInSection: _)
    Tasks.all.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(TASK_CELL_ID, forIndexPath: indexPath)
    cell.textLabel.text = Tasks.all[indexPath.row]
    cell
  end
end
