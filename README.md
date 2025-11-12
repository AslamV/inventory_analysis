# 🏭 Warehouse Analytics Platform

## 📘 Overview

This project implements a **Warehouse Analytics Platform** designed to unify and analyze data across two key business entities — **Supply Chain** and **Warehouse Management System (WMS)**.  
It follows the **Medallion Architecture** (Bronze → Silver → Gold) pattern and incorporates **SCD Type-2 dimensional modeling** for historical tracking and analytical consistency.

The solution is fully developed on **Databricks**, with **metadata-driven orchestration**, **schema evolution tracking**, and **automated audit logging** for end-to-end pipeline transparency.

---

## 🧱 Architecture Summary

### 🥉 Bronze Layer (Raw)

Acts as the **landing zone** for raw ingested data.

#### WMS Entity
- Data ingested from CSV files and converted to **Delta format**  
- Maintains a **Schema Registry** to track schema evolution and ensure compatibility  

#### Supply Chain Entity
- Data ingested from CSV files and stored as **Parquet** in Databricks Volumes  

---

### 🥈 Silver Layer (Refined)

Stores **cleansed, validated, and standardized** data ready for downstream analytics.

**Includes:**
- Type casting, null handling, and constraint validation  
- Data quality and referential integrity checks between fact and dimension tables  
- Data stored as **Delta Tables** for **ACID compliance** and **time travel**

---

### 🥇 Gold Layer (Analytics & Reporting)

Designed using **SCD Type-2 Dimension Models** to maintain historical accuracy.

**Generates business-focused metrics and KPIs such as:**
- Inventory Summary  
- Inbound & Outbound Movements  
- Shipment Summary  
- Inventory Position  
- Order Fulfilment  
- Warehouse KPIs  

The Gold layer is modeled for **Power BI / Tableau** consumption and executive dashboards.

---

## 🏗️ Entity Domains

### 1️⃣ Supply Chain
- **Entities:** `products`, `purchase_orders`, `receipts`, `suppliers`  
- **Data Source:** CSV files  
- **Storage:** Parquet (Bronze) → Cleaned Delta (Silver) → Dimensional Models (Gold)

---

### 2️⃣ Warehouse Management System (WMS)
- **Entities:** `inventory_snapshot`, `pick_movement`, `putaway_movement`, `shipment`, `bin_lot`  
- **Data Source:** CSV files  
- **Storage:** Delta (Bronze) → Refined Delta (Silver) → Aggregated Metrics (Gold)

---

## ⚙️ Orchestration & Automation

- **Databricks Workflows** orchestrate the end-to-end data pipelines.  
- A **metadata-driven orchestration notebook** dynamically picks up table configurations and executes transformations across all layers.  
- **Audit Tables** capture execution metadata and run history, enabling:
  - Pipeline observability  
  - Run-status tracking  
  - Error diagnostics  

---

## 🧩 Technology Stack

| Component | Description |
|------------|-------------|
| **Platform** | Databricks |
| **Storage Format** | Delta, Parquet |
| **Data Modeling** | SCD Type-2 Dimensional Model |
| **Architecture** | Medallion (Bronze, Silver, Gold) |
| **Orchestration** | Databricks Workflows (Metadata-Driven) |
| **Schema Management** | Schema Registry (Bronze Layer) |
| **Auditing** | Custom Audit Tables |
| **Languages** | PySpark, SQL |
| **Version Control** | GitHub |

---

## 🚀 Key Highlights

- ✅ Built on **Medallion Architecture** for modular and scalable data flow  
- ✅ **Schema Registry** ensures compatibility and version tracking  
- ✅ **Metadata-driven orchestration** minimizes manual intervention  
- ✅ **Audit logging** enables transparency and lineage tracking  
- ✅ **SCD Type-2 modeling** provides accurate historical reporting  
- ✅ Ready for **business KPI dashboards** via Power BI or Tableau  



