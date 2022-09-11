class Stack<T> {
    var array = [T]()
    
    func push(_ data: T) {
        array.append(data)
    }
    
    func pop() {
        array.popLast()
    }
    
    func peek() -> T? {
        array.first
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count: Int {
        array.count
    }
}
