use serde::{Deserialize, Serialize};
use validator::Validate;
use chrono::{DateTime, Utc};

#[derive(Debug, Deserialize, Serialize, Validate, Clone)]
pub struct NewTicket {
    pub status_id: i64,
    pub author_id: i64,
    pub created: DateTime<Utc>,
    pub updated: DateTime<Utc>,
}
