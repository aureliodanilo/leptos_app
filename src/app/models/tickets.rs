use serde::{Deserialize, Serialize};
use validator::Validate;
#[cfg(feature = "ssr")]
use sqlx::FromRow;
use chrono::{DateTime, Utc};

#[derive(Debug, Deserialize, Serialize, Validate, PartialEq, Eq, Clone)]
#[cfg_attr(feature = "ssr", derive(FromRow))]
pub struct Ticket {
    pub id: i64,
    pub status_id: i64,
    pub author_id: i64,
    pub created: DateTime<Utc>,
    pub updated: DateTime<Utc>,
}
