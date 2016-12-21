 ## Overtime App

## Key requirements: company needs documentation that salaried employees did or did not get overtime each week.

## Models:

- Post -> date:date rationale:text
X User -> Devise
X AdminUser -> STI


## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:

- Bootstrap

## Refactor TODOs
- refactor user association integration in post spec