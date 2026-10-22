const prompt= require("prompt-sync")();
let x=Number(prompt("kullanıcıdan sayi al:"));
let kalan=x%2;
let kalanise;
kalanise=kalan;
kalanise =kalanise===0?  "çift":"tek";
console.log(kalanise);