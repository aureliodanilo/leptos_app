use serde::{Deserialize, Serialize};
use validator::Validate;
#[cfg(feature = "ssr")]
use sqlx::FromRow;

#[derive(Debug, Deserialize, Serialize, Validate, PartialEq, Eq, Clone)]
#[cfg_attr(feature = "ssr", derive(FromRow))]
pub struct TicketStatus {
    pub id: i64,
    pub text: String,
}
