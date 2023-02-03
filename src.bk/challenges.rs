pub fn run() {
	use crate::utils::run::split;
	split("Challenges");

	println!("Challenge 1: Write a program to calculate the sum of the cubes of two numbers.");
	test();
}
fn test() {
	/// My solution
	// let a = 2;
	// let b = 2;
	//
	// fn pow(x:i32,y:i32) -> i32 {
	//     let (mut i,mut sum) = (0,1);
	//     while(i<y) {
	//         sum *= x;
	//         i+=1;
	//     }
	//     return sum;
	// }
	// // Write code here!
	// fn calculate(x:i32,y:i32) -> i32 {
	//     return pow(x,3) + pow(y,3) + 3*x*y*(x+y);
	// }
	//
	// print!("{}", calculate(a,b));

	/// Chad's solution
	let a = 2;
	let b = 2;
	let c = i32::pow(a, 3) + i32::pow(b, 3) + (3 * a * b * (a + b));
	println!("{}", c);
}
