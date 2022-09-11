class Queue<T> {
    var array = [T]()
    
    func enqeue(_ data: T) {
        array.append(data)
    }
    
    func deqeue() {
        if array.isEmpty {
            return
        } else {
            array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var count: Int {
        array.count
    }
}
