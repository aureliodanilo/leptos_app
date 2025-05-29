use serde::{Deserialize, Serialize};
use validator::Validate;
use sqlx::FromRow;

#[derive(Debug, Deserialize, Serialize, Validate, PartialEq, Eq, Clone, FromRow)]
pub struct Status {
    pub id: i64,
    pub text: String,
}
