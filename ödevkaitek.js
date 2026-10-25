// const prompt= require("prompt-sync")();
// let x=Number(prompt("kullanıcıdan sayi al:"));
// let kalan=x%2;
// let kalanise;
// kalanise=kalan;
// kalanise =kalanise===0?  "çift":"tek";
// console.log(kalanise);  



// const prompt=require("prompt-sync")();
// let x= Number(prompt("kullanıcıdan sayi al :")) ; //0 1 biri anlayan boolean var
// let kalanbul = boolean(Number((x%2))); //boolen mantığı nasıldı 0 false 1 se true 
// let kalançift=kalanbul==false
// console.log(`${kalançift} kalan 0 olduğu için çift`);
// let kalantek= kalanbul==true
// console.log(`${kalantek}kalan odluğu için tek sayi` )




// const prompt=require("prompt-sync")();
// let x=Number(prompt("sayi gir:"))
// let ciftsayi = x%2;
// let teksayi =x%2===1;

// let nasiptevarsa=Boolean(ciftsayi===0 );
// let kısmmettenöteyeyolyok=Boolean(teksayi===1)
// // let yazıekle="çift"===Boolean(nasiptevarsa);
// console.log(`${Number(!nasiptevarsa)} oldu  `);



// const prompt=requrie("prompt-sync")();
// let x= Number(prompt("sayi gir:"));
// let  (x%2)

// const prompt=require("prompt-sync")();
// let x=Number(prompt("sayi gir:"))
// let ciftsayi = x%2;
// let teksayi =x%2===1;

// let nasiptevarsa=Boolean(ciftsayi===0 );
// let kısmmettenöteyeyolyok=Boolean(teksayi===1)
// Boolean(nasiptevarsa)=="çift";
// Boolean(!nasiptevarsa)=="tek";
// console.log(`${Number(!nasiptevarsa)} oldu  `);
// console.log(Boolean (nasiptevarsa));
// console.log(nasiptevarsa);




//  algoritma mantığıyla gidelim herşeyi sırasıyla ve sıralı aşamaları detaylı düşün 

// const prompt= require("prompt-sync")();
// let x=Number(prompt("kullanıcı çift veya tek sayi girsin:"))
// let y=x%2;
// let çift =Boolean(Number(y));
// let sorgu=new Boolean(çift);


// console.log( x , y,çift.toString());


// let sorgu=Boolean(y===1);

//  sorgu="tek"; //atmama sırasını düşün 

//  console.log(`kullanıcı ${x} kalanı${y} sonuc ${sorgu}`);




const prompt= require("prompt-sync")();
let x=Number(prompt("kullanıcı çift veya tek sayi girsin:"))
let y=x%2;
let sorgu=Boolean(Number(y))
let birse=1;



function sayiyibul(calback){
calback(sorgu); // calback fonksiyon hataları
}

function cift (y){
     y =x%2;
    // let sorgu=Boolean(y);
    console.log(`kulanıcının girdiği sayi ${y}çift sayidir`);
 return
}
function tek(sorgu){
     y=x%2;
    // let sorgu=Boolean(y)
    console.log(`kulanıcının girdiği sayi ${y} tek sayidir`)
    return
}
sayiyibul(y);
