#![allow(dead_code)]
fn main() {
    let weekday = Days::Wednesday;
    let weekend = Days::Saturday;
	assert_eq!(weekday.is_weekend(), 0);
	assert_eq!(weekend.is_weekend(), 1);

	assert_ne!(weekday.is_weekend(), 1);
	assert_ne!(weekend.is_weekend(), 0);
}
enum Days {
	Monday,
	Tuesday,
	Wednesday,
	Thursday,
	Friday,
	Saturday,
	Sunday,
}
impl Days {
	fn is_weekend(&self) -> i32 {
		match self {
			Self::Sunday | Self::Saturday => 1,
			_ => 0,
		}
	}
}
