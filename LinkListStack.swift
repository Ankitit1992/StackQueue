class Stack {
    var head: Node?
    
    func push(_ data: Int) {
        if head == nil {
            head = Node(data)
            return
        }
        var temp = head
        while temp?.next != nil {
            temp = temp?.next
        }
        
        let newNode = Node(data)
        temp?.next = newNode
    }
    
    func pop()  {
        if head == nil {
            return
        }
        var temp = head
        var pre = head
        while temp?.next != nil {
            pre = temp
            temp = temp?.next
        }
        
        pre?.next = nil
        temp = nil
        
    }
    
    func display() -> [Int] {
        var array = [Int]()
        var temp = head
        while temp != nil {
            array.append((temp?.data)!)
            temp = temp?.next
        }
        
        return array
    }
}

let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(5)

print(stack.display())

stack.pop()

print(stack.display())

stack.push(4)
stack.push(8)

print(stack.display())

stack.pop()

print(stack.display())
