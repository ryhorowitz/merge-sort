function merge(arr1, arr2) {
  let result = []

  while (arr1.length > 0 && arr2.length > 0) {
    if (arr1[0] < arr2[0]) {
      result.push(arr1.shift())
    } else {
      result.push(arr2.shift())
    }
  }

  if (arr1.length === 0) {
    result = result.concat(arr2)
  } else {
    result = result.concat(arr1)
  }
  return result
}

function mergeSort(arr) {
  if (arr.length === 0 || arr.length === 1) return arr

  const mid = Math.floor(arr.length / 2)
  const left = arr.slice(0, mid)
  const right = arr.slice(mid)
  console.log('left is', left)
  console.log('right is', right)
  return merge(mergeSort(left), mergeSort(right))
}

if (require.main === module) {
  // add your own tests in here
  // console.log("Expecting: [1, 2]");
  // console.log("=>", mergeSort([2, 1]));

  // console.log("");

  // console.log("Expecting: [1, 2, 3]");
  // console.log("=>", mergeSort([1, 2, 3]));

  // console.log("");

  // console.log("Expecting: [-10, 0, 2, 2, 5, 10, 20]");
  // console.log("=>", mergeSort([10, -10, 0, 2, 20, 5, 2]));

  console.log("Expecting: [-10, 0]")
  console.log("=>", merge([-10], [0]))

  console.log("Expecting: [1,1,3,4,6,7,9]")
  console.log("=>", merge([1, 4, 6], [1, 3, 7, 9]))
}

module.exports = mergeSort;

// Please add your pseudocode to this file
// And a written explanation of your solution
