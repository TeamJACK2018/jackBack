require 'rails_helper'

RSpec.describe MyTask, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe MyTask do
  before do
    @my_task = MyTask.new
  end

  describe 'due_date' do
      it 'should display a due date'
        expect(@my_task.due_date).to be_a String
  end
end
