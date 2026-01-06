# fraud-ring-detection-snowflake
Graph-based fraud ring detection and explainable risk analysis using Snowflake SQL
# Fraud Ring Detection using Snowflake SQL

## Overview
This project implements an explainable, graph-based fraud detection pipeline using Snowflake SQL.
The system identifies coordinated fraud rings, ranks their risk, and highlights key participants
(fraud coordinators) with analyst-ready explanations.

## Key Features
- Fraud ring detection using shared signals (IP / device)
- User-level risk scoring
- Ring risk ranking
- Fraud coordinator identification
- Explainable reasoning for every fraud decision
- Final investigation report export (CSV)

## Tech Stack
- Snowflake
- SQL (CTEs, window functions, aggregation)
- Graph-style analytics (connections & rings)

## Workflow
1. Load fraud interaction data
2. Compute multi-signal risk scores
3. Detect coordinated fraud rings
4. Rank rings by severity
5. Identify fraud coordinators
6. Generate final investigation report

## Output
The final result is an analyst-ready fraud investigation report exported as CSV:
