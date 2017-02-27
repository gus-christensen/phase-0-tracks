#paired with Stacy Curry!

# loop through each element in the array up to .length number of times
# test if that element is equal to input/the value we're searching for
# use a counter variable to track index without using .index

arr = [42, 89, 23, 1]

def search_array(arr, int)

  x = 0

  until x == arr.length + 1
    if x == arr.length
      return nil
      x += 1
    elsif arr[x] == int
      return x
      x += 1
    else
      x += 1
    end
  end
end

p search_array(arr, 1)

p search_array(arr, 24)



def fib(int)
	if int == 1
		array = [0]
	elsif int == 2
		array = [0, 1]

	#loop a push of array[-1] + array[-2], until counter = int
	else
		array = [0, 1]
		x = 2
		until x == int
			array << (array[-1] + array[-2])
			x += 1
		end
	end
	return array
end


p fib(6)

p fib(100)[-1] 

p fib(100)[-1] == 218922995834555169026


#release2
#sort numbers in an array:
#define min to be first element of array
#for all emlements, while noting index, if element is less than or equal to than min, min = element
#after completing that loop, delete min from the array
#push index element min into new_array
#repeat min loop until array.length = 0
def sortArray(array)
	newArray = []
	until array.length == 0
		minNo = array[0]
		x = 1
	    until x == array.length
	      if array[x] <= minNo
	        minNo = array[x]
	        x += 1
	      else
	      	x += 1
	      end
	    end
	    newArray << minNo
		array[array.index(minNo)] = nil
    	array.delete(nil)
	end
	return newArray
end

p sortArray([4, 7, 2, 9, 2, 1, 0])


















