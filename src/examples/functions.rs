use crate::utils::run::split;

pub fn run() {
    split("Functions");
    println!("You must use &mut as arguments to pass by reference");
    println!("Ex: fn function_name(param1:&mut datatype, ..)");
    square(&mut 2);

    arrays();

    split("Closures");
}

fn square(n:&mut i32){
  *n = *n * *n;
  println!("The value of n inside function : {n}");
} 

fn modify_my_array(arr:&mut [i32;5]){
   arr[2] = 8;
   arr[3] = 9;
   println!("Array in my Function : {arr:?}");
}

fn arrays() { 
    println!("Arrays can also be referenced by using &mut inside a function");
    println!("Ex: fn function_name(param1:&mut [i32;5], ..) -> &mut [datatype; size]");
   modify_my_array(&mut [1,2,3,4,5]);

}

