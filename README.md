# fraud-ring-detection-snowflake
Graph-based fraud ring detection and explainable risk analysis using Snowflake SQL
# Fraud Ring Detection using Snowflake SQL & Neo4j

## Overview
This project implements an end-to-end fraud ring detection system using a hybrid SQL + Graph architecture.
Snowflake is used for scalable risk scoring, aggregation, and reporting, while Neo4j is used to model and analyze fraud relationships as a graph for explainability and investigation.

The system identifies coordinated fraud rings, ranks their severity, and highlights fraud coordinators, producing an analyst-ready investigation report.

## Key Features
- Fraud ring detection using shared signals (IP / device)
- User-level risk scoring
- Ring-level risk ranking
- Fraud coordinator identification
- Graph-based modeling of fraud relationships
- Explainable reasoning for every fraud decision
- Final investigation report export (CSV)

## Architecture
Snowflake (Analytical Layer)
- Data modeling & transformations
- Risk score computation
- Fraud ring aggregation
- Coordinator ranking
- Final report generation
  
Neo4j (Graph Layer)
- Users, IPs, and Devices as graph nodes
- Fraud relationships as edges
- Detection of shared infrastructure usage
- Visual and query-based fraud explainability
## Tech Stack
- Snowflake
- SQL (CTEs, window functions, aggregation)
- Neo4j
- Cypher
- Graph- based fraud analytics

## Workflow
1. Load fraud interaction data into Snowflake
2. Compute multi-signal user risk scores
3. Detect coordinated fraud rings
4. Rank rings by severity
5. Identify fraud coordinators
6. Export investigation data to CSV
7. Load CSVs into Neo4j
8. Model users, IPs, and devices as a graph
9. Analyze and explain fraud rings using graph queries

## Neo4j Graph Model
Nodes
- User
- IP
- Device
  
Relationships
- (:User)-[:USES_IP]->(:IP)
- (:User)-[:USES_DEVICE]->(:Device)
- (:User)-[:POTENTIAL_FRAUD_WITH]->(:User)

This graph enables intuitive investigation of shared infrastructure and coordinated fraud behavior.
## Output
The final result is an analyst-ready fraud investigation report exported as CSV:
output/fraud_investigation_report.csv
