use serde::{Deserialize, Serialize};
use validator::Validate;
#[cfg(feature = "ssr")]
use sqlx::FromRow;

#[derive(Debug, Deserialize, Serialize, Validate, PartialEq, Eq, Clone)]
#[cfg_attr(feature = "ssr", derive(FromRow))]
pub struct Author {
    pub id: i64,
    pub firstname: String,
    pub lastname: String,
}
