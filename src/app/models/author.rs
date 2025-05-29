use serde::{Deserialize, Serialize};
use validator::Validate;
use sqlx::FromRow;

#[derive(Debug, Deserialize, Serialize, Validate, PartialEq, Eq, Clone, FromRow)]
pub struct Author {
    pub id: i64,
    pub firstname: String,
    pub lastname: String,
}
