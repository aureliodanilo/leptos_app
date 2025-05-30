use serde::{Deserialize, Serialize};
use validator::Validate;

#[derive(Debug, Deserialize, Serialize, Validate, PartialEq, Eq, Clone)]
pub struct User {
    pub id: i64,
    pub firstname: String,
    pub lastname: String,
    pub role_id: i64,
}
