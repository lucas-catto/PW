
// let nomes = new Array();
// console.log(nomes);


// let nomes = new Array(3);
// nomes[2]  = "Elon Musk";
// console.log(nomes[2]);

/*
let nomes = new Array(5); // 5

nomes[0]  = "Lucas Catto";
nomes[1]  = "Elon Musk";
nomes[2]  = "Steve Jobs";
nomes[3]  = "Larry Ellison";
nomes[4]  = "Bill Gates";

console.table(nomes);

console.log(nomes[0]);
console.log(nomes[1]);
console.log(nomes[2]);
console.log(nomes[3]);
console.log(nomes[4]);
*/

/*
let nomes = new Array("Lucas Catto", "Elon Musk", "Steve Jobs");

console.table(nomes);

console.log(nomes[0]);
console.log(nomes[1]);
console.log(nomes[2]);
*/

/*
let nomes = new Array();

nomes.push("Lucas Catto");
nomes.push("Elon Musk");
nomes.push("Steve Jobs");
nomes.push("Sergey Brin");

console.log(nomes.length);
*/


let nomes = new Array();

nomes.push("Lucas Catto");
nomes.push("Elon Musk");
nomes.push("Steve Jobs");
nomes.push("Sergey Brin");
nomes.push("Jeff Bezos");
nomes.push("Bill Gates");
nomes.push("Larry Page");
nomes.push("Jack Dorsey");

for (let i = 0; i < nomes.length; i++) {
    console.log("["+i+"]" + " - " + nomes[i]);
}
