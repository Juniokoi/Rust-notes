mod examples;
mod challenges;
mod utils;

/// This is a Doc comment outside the function
/// Generate docs for the following item.
/// This shows my code outside a module or a function
fn main() {
use std::env;

    for argument in env::args() {
        match argument.as_str() {
            "variables" => examples::variables::run(),
            "datatypes" => examples::datatypes::run(),
            "conditional_loops" => examples::conditional_loops::run(),
            "functions" => examples::functions::run(),
            "arrays" => examples::arrays::run(),
            "challenges" => challenges::run(),
            "all" => {
                examples::variables::run();
                examples::datatypes::run();
                examples::conditional_loops::run();
                examples::arrays::run();
                examples::functions::run();
                challenges::run();
            }
            _ => println!("{argument} is not a valid argument"),
        }
    }

}
