use crate::utils::run::split;

pub fn run() {
    split("Loops");
    loops();
}

fn loops() {
    println!("We can use the enumerate() method to get the value of the iterable");
    for (count, variable) in (7..10).enumerate() {
        println!("in (7..10).enumerate()");
        println!("count = {count}, variable = {variable}");
    }

    println!("Using an array as iterable");
    let item:[i32;4] = [1,4,3,2];
        println!(".iter() gets the values of the array");
        println!("while .enumerate() gets the index");
    for (count, variable) in item.iter().enumerate() {
        println!("count = {count}, variable = {variable}");
    }

    println!("\n If you want just to get the array value, use only the .iter()");
    println!("\n:: Loop loop ::");
    let mut count = 0;
    loop {
        println!("count = {count}");
        count += 1;
        if count == 10 {
            break;
        }
    }
    println!(r#"Just stops if keyworkd "break" is reached, otherwhise it will loop forever"#);

    println!(":: Outer and inner loop ::");
    'outer:for i in 1..5 { //outer loop
        println!("Muliplication Table : {i}");
        'inner:for j in 1..5 { // inner loop
            if i == 3 { continue 'outer; } // Continues the loop over `i`.
            if j == 2 { continue 'inner; } // Continues the loop over `j`.
            println!("{} * {} = {}", i, j, i * j);
        }
    }
    println!("You can control the nested loops with the labels 'outer and 'inner ");


    
}
