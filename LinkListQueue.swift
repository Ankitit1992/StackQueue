class Queue {
    var head: Node?
    
    func enqueue(_ data: Int) {
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
    
    func dequeue() {
        if head == nil {
            return
        }
        var temp = head
        head = temp?.next
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

let queue = Queue()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(5)

print(queue.display())

queue.dequeue()

print(queue.display())
