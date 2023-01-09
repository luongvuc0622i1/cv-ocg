// Bai 1
let array1 = [0,0,1,1,1,2,2,3,3,4,5];

function deleteElement(array, index) {
    for (let i = index + 1; i < array.length; i++) {
        array[i - 1] = array[i];
    }
    array[array.length-1] = '*';
}

for (let i = 0; i < array1.length - 1; i++) {
    for (let j = i + 1; j < array1.length; j++) {
        if (array1[i] == array1[j] && Number.isFinite(array1[i])) {
            deleteElement(array1, j);
            i--;
        }
    }
}

console.log(array1);

// Bai 2
let array2 = [4,3,6,3,6];

for (let i = 0; i < array2.length; i++) {
    let count = 0;
    for (let j = 0; j < array2.length; j++) {
        if (array2[i] == array2[j]) {
            count++;
        }
    }
    if (count == 1) {
        console.log("Gia tri duy nhat la: " + array2[i]);
    }
}

// Bai 3
let array3 = [2,7,9,3,1];
let array3Sum = [];

for (let i = 0; i <= 1; i++) {
    let sum = array3[i];
    for (let j = i + 2; j < array3.length; j++) {
        sum += array3[j];
        j++;
    }
    array3Sum.push(sum);
}

let max = array3Sum[0];
for (let i = 0; i < array3Sum.length; i++) {
    if (max < array3Sum[i]) {
        max = array3Sum[i];
    }
}

console.log("Tong lon nhat la: " + max);

// Bai 4
let array4 = [-1,0,1,2,-1,-4];
let result = [];

for (let i = 0; i < array4.length; i++) {
    let sum;
    for (let j = i + 1; j < array4.length; j++) {
        for (let k = j + 1; k < array4.length; k++) {
            sum = array4[i] + array4[j] + array4[k];
            if (sum == 0) {
                result.push([array4[i], array4[j], array4[k]]);
            }
        }
    }
}

console.log(result);



