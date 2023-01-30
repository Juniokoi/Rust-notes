pub fn run() {
    use crate::utils::run::split as split;

    split("Arrays");
    //define an array of size 4
    let _arr: [i32; 4] = [1, 2, 3, 4];
    // initialize an array of size 4 with 0
    let _arr1 = [0; 4];
    println!("The first value of array(_arr) is {}", _arr[0]);
    println!("The first value of array(_arr1) is {}", _arr1[0]);

    let mut _arr2: [i32; 4] = [1, 2, 3, 4];
    println!(
        "\nArray(_arr2) length: {} | value: {:?}",
        _arr2.len(),
        _arr2
    );
    println!("The old value of array(_arr2) at index 1: {}", _arr2[1]);
    println!("~~ Changing the value ~~");
    _arr2[1] = 9;
    println!("The new value of array(_arr2) at index 1: {}", _arr2[1]);
    println!("Array(_arr2) length: {} | value: {:?}", _arr2.len(), _arr2);

    //define an array of size 4
    let arr: [i32; 4] = [1, 2, 3, 4];
    //define the slice
    let slice_array1: &[i32] = &arr;
    let slice_array2: &[i32] = &arr[0..2];
    // print the slice of an array
    println!("\nSlice of an array:&arr {:?}", slice_array1);
    println!("Slice of an array:&arr[0..2] {:?}", slice_array2);

    split("Tuples");
    //define a tuple
    let _person_data: (&str, i32, &str, &str) = ("Alex", 48, "35kg", "6ft");
    let (name, age, weight, height) = _person_data;
    println!(
        "Name: {}\nAge: {}\nWeight: {}\nHeight: {}",
        name, age, weight, height
    );
    println!("Tuple - Person Data : {:?}", _person_data);

    // define a scrutinee expression
    let course = ("Rust", "beginner", "course");
    // pattern matches with the scrutinee expression
    if let ("Rust", c, d) = course {
        println!("Wrote one value in pattern to be matched with the scrutinee expression.Guessed values: {}, {}",c,d);
    } else {
        // do not execute this block
        println!("Value unmatched");
    }
    // define a scrutinee expression
    let course = ("Rust", "beginner");
    // pattern does not match with the scrutinee expression
    if let ("Java", c) = course {
        println!("Course is {}", c);
    } else {
        // execute this block
        println!("Value unmatched");
    }

    // define a variable
    let course = "Rust";
    // return value of match expression in a variable
    let found_course = match course {
        "Rust" => "Rust",
        "Java" => "Java",
        "C++" => "C Plus Plus",
        "C#" => "C Sharp",
        _ => "Unknown Language",
    };
    println!("Course name : {}", found_course);
}
