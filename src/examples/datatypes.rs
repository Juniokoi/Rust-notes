use crate::utils::run::split as split;

pub fn run() {
    split("Data Types");
    // Explicitly define an integer
    let a: i32 = 24;
    let b: u64 = 23;
    let c: usize = 26;
    let d: isize = 29;
    //Print the values
    println!("i32: {}\nu64: {}\nusize: {}\nisize: {}", a, b, c, d);

    //explicitly define a float type
    let f1: f32 = 32.9;
    let f2: f64 = 6789.89;
    println!("\nf32: {}", f1);
    println!("f64: {}", f2);

    let b: bool = true;
    println!("\nbool: {}", b);

    // explicitly define
    let char_1: char = 'e';
    println!("char: {}", char_1);

    // explicitly define
    let str_1: &str = "Rust Programming";
    println!("String 1: {}", str_1);

}
