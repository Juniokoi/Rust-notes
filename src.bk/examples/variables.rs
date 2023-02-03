use crate::utils::run::split as split;

pub fn run() {

    split("Printing");
    // Ordering arguments
    println!("Hello, {0}!, The {0} is Beautiful", "World");
    // Named arguments
    println!(
        "{company} provides {kind} courses",
        company = "Educative",
        kind = "interactive"
    );
    // You can convert a value to a binary, Hexadecimal or Octal
    println!(
        "Number : 10 \nBinary:{:b} Hexadecimal:{:x} Octal:{:o}",
        10, 10, 10
    );
    // Can be used for calcs
    println!("{} + {} = {}", 10, 10, 10 + 10);
    // Debug trait :?
    println!("{:?}", ("This is a Rust Course", 101));
    // Print shows the value on the same line
    print!("Hey you! See this new line: ");
    // Println shows the value on the next line
    println!("I'm full of eating hot doggo");
    //eprint!() and eprintln!() are used to print to the standard error instead of the standard output
    eprintln!("This is an error");

    yay();

    /// This is a Doc comment for the function below
    fn yay() {
        //! This a doc comment that is inside the function   
        //! This comment shows my code inside a module or a function  
        //! Generate docs for the enclosing item
        println!("Yay! I'm inside a function");
    }


    split("Variables");

    let language = "Rust"; // define a variable
    println!("Language: {}", language); // print the variable

    let (course, category) = ("Rust", "beginner"); // assign multiple values
    println!("This is a {} course in {}.", category, course); // print the value
                                                              //

    split("Scopes");

    let outer_variable = 112;
    let inner_variable = 213;
    {
        println!("block variable inner: {}", inner_variable);
        println!("block variable outer: {}", outer_variable);
    }
    println!("inner variable: {}", inner_variable);

    let outer_variable = 112;
    {
        let inner_variable = 213;
        println!("block variable: {}", inner_variable);
        let outer_variable = 117;
        println!("block variable outer: {}", outer_variable);
    }
    println!("outer variable: {}", outer_variable);

    split("Constants and mutability");

    let mut x = 1000;
    let y = "Programming";
    println!("x:{}\ny:{}", x, y);
    {
        x = 1100;
        println!("x:{}\ny:{}", x, y);
    }
}
