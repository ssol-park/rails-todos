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

RSpec.describe Todo, type: :model do
  describe "Todo 테스트 데이터 생성" do
    it "Todo 데이터를 생성한다" do
      # 방법 1: 반복문 사용
      10.times do |i|
        create(:todo, title: "할일 #{i + 1}", created_by: "사용자 #{i + 1}")
      end
    end
  end
end

RSpec.describe Todo, type: :model do
  describe "Todo 테스트 데이터 일괄 생성" do
    it "Todo 데이터를 일괄 생성한다" do
      create_list(:todo, 10, created_by: "테스트 사용자")
    end
  end
end