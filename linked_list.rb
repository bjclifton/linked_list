class LinkedList

    def initialize(value=nil)
        @head = Node.new(value)
    end

    def append(value)
        current = @head
        while current.next != nil
            current = current.next
        end
        current.next = Node.new(value)
    end

    def prepend(value)
        temp = Node.new(value)
        temp.next = @head
        @head = temp
    end
    
    def size
        current = @head
        count = 1
        while current.next != nil
            current = current.next
            count += 1
        end
        count
    end

    def head
        @head
    end

    def tail
        current = @head
        while current.next != nil
            current = current.next
        end
        current
    end

    def at(index)
        current = @head
        count = 0
        while count < index
            current = current.next
            count += 1
        end
        current
    end

    def pop
        current = @head
        while current.next.next != nil
            current = current.next
        end
        current.next = nil
    end 

    def contains?(value)
        current = @head
        while current.next != nil
            return true if current.value == value
            current = current.next
        end
        false
    end

    def find(value)
        current = @head
        count = 0
        while current.next != nil
            return count if current.value == value
            current = current.next
            count += 1
        end
    end

    def to_s
        current = @head
        while current.next != nil
            print "( #{current.value} ) -> "
            current = current.next
        end
        print "( #{current.value} ) -> nil"
    end

end

class Node
    attr_accessor :value, :next
    def initialize(value=nil)
        @value = value
        @next = nil
    end
end

list = LinkedList.new(1)
list.append(2)
list.append(3)
list.append(7)
list.prepend(0)
list.prepend(9)
list.prepend(8)
list.prepend(23)
list.to_s