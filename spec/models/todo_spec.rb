require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "모든 Todo를 조회한다" do
    todos = Todo.all

    puts "조회된 Todo 개수: #{todos.count}"
    todos.each do |todo|
      puts "Todo ID: #{todo.id}, 제목: #{todo.title}, 생성일자: #{todo.created_by}"
    end

    expect(todos).to be_a(ActiveRecord::Relation)
  end
end
