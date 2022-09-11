func rotationRight( _ arr:[Int], _ k: Int) -> [Int] {
    
    var result = arr
    
    for _ in 1...k {
        let last = result.last!
        result.insert(last, at: 0)
        result.removeLast()
    }
    
    return result
}


print(rotationRight([1,2,3,4,5], 3))


func rotationLeft(_ arr: [Int], _ k: Int) -> [Int] {
    var result = arr
    for _ in 1...k {
        let first = result.first!
        result.removeFirst()
        result.insert(first, at: arr.count - 1)
        
    }
    
    return result
}

func reverseString(_ string: String) -> String {
    var newString = [String]()
    for value in string {
        newString.insert(String(value), at: 0)
    }
    let newstring = newString.joined()
    return newstring
}

func balanceBarcketProblem(_ string: String) -> String {
    
    var st = [Character]()
    
    for value in string {
        switch value {
        case "{", "(", "[":
            st.append(value)
        case "}":
            if st.isEmpty || st.last != "{" {
                return "No"
            }
            st.popLast()
        case ")":
            if st.isEmpty || st.last != "(" {
                return "No"
            }
            st.popLast()
        case "]":
            if st.isEmpty || st.last != "[" {
                return "No"
            }
            st.popLast()
        default:
            return ""
        }
    }
   return st.isEmpty ? "Yes" : "No"
}

print(balanceBarcketProblem("{[()]}"))
print(rotationStringSol2("abc"))
print(rotationLeft([1,2,3,4,5], 2))
