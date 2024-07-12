# 🌟 Search Protobufs Demo

This demo showcases how PR Pilot can be used for **semantic search** over files in a repository, specifically focusing on protobuf files.

## 🚀 Getting Started

This demo includes a generator script, which generates protobuf files for a particular domain.

### 📂 Directory Structure

- `run.sh`: Script to execute the search task.
- `generate.sh`: Script to generate protobuf files
- `search.md.jinja2`: Jinja template for the search task.

## 🛠️ How to Use

### 1. Generate Protobuf Files

First, you need to generate the protobuf files. Run the following command:

```bash
➜  search-protobufs git:(main) ✗ ./generate.sh
> Domain: A warehouse for electronic components
> How many protobufs: 15
✔ Task created: b0c6e39c-66b2-4caf-8996-2cf97e502f8a (0:00:00.00)
✔ Generate 15 realistic protobufs for elec (0:00:15.34)
✔ Code saved in out.txt (0:00:00.00)
```


### 2. Perform Semantic Search

Once the protobuf files are generated, you can perform a semantic search. Run the following command:

```bash
./run.sh
```

This script will **ask what you want to know** and execute the search task using the `search.md.jinja2` template:

```shell
➜  search-protobufs git:(main) ✗ ./run.sh 
✔ Running shell command: sh collect.sh (0:00:00.02)
> What i want to know: Give me a brief overview of the domain model
✔ Task created: 1827888d-c0a6-4f0d-9318-cd8b840d51cb (0:00:00.00)
✔ Search protobuf files in the repository (0:00:13.42)
╭────────────────────────────────────────────────────────── Result ──────────────────────────────────────────────────────────╮
│ The domain model represented by the protobuf files in the repository appears to be centered around a warehouse management  │
│ system. Here's a brief overview of the key entities and their relationships:                                               │
│                                                                                                                            │
│   1 Component (proto_000.proto):                                                                                           │
│      • Represents individual components in the warehouse.                                                                  │
│      • Attributes: id, name, manufacturer, category, price, stock.                                                         │
│   2 Order (proto_002.proto):                                                                                               │
│      • Represents orders placed for components.                                                                            │
│      • Attributes: id, component_id, quantity, order_date, delivery_date, status.                                          │
│   3 Customer (proto_003.proto):                                                                                            │
│      • Represents customers who place orders.                                                                              │
│      • Attributes: id, name, email, phone, address, membership_level.                                                      │
│   4 Inventory (proto_004.proto):                                                                                           │
│      • Represents the inventory status of components.                                                                      │
│      • Attributes: id, component_id, quantity, last_updated, location, status.                                             │
│   5 Shipment (proto_005.proto):                                                                                            │
│      • Represents shipments of orders.                                                                                     │
│      • Attributes: id, order_id, shipment_date, delivery_date, carrier, tracking_number.                                   │
│   6 Return (proto_006.proto):                                                                                              │
│      • Represents returns of orders.                                                                                       │
│      • Attributes: id, order_id, component_id, quantity, return_date, reason.                                              │
│   7 Employee (proto_007.proto):                                                                                            │
│      • Represents employees working in the warehouse.                                                                      │
│      • Attributes: id, name, position, email, phone, hire_date.                                                            │
│   8 Department (proto_008.proto):                                                                                          │
│      • Represents departments within the warehouse.                                                                        │
│      • Attributes: id, name, manager, location, employee_count, contact_number.                                            │
│   9 PurchaseOrder (proto_009.proto):                                                                                       │
│      • Represents purchase orders made to suppliers.                                                                       │
│      • Attributes: id, supplier_id, order_date, delivery_date, total_amount, status.                                       │
│  10 Invoice (proto_010.proto):                                                                                             │
│      • Represents invoices for orders.                                                                                     │
│      • Attributes: id, order_id, amount, issue_date, due_date, status.                                                     │
│  11 Payment (proto_011.proto):                                                                                             │
│      • Represents payments made for invoices.                                                                              │
│      • Attributes: id, invoice_id, amount, payment_date, method, status.                                                   │
│  12 Maintenance (proto_012.proto):                                                                                         │
│      • Represents maintenance activities for components.                                                                   │
│      • Attributes: id, component_id, maintenance_date, technician, description, status.                                    │
│  13 Audit (proto_013.proto):                                                                                               │
│      • Represents audits conducted in the warehouse.                                                                       │
│      • Attributes: id, audit_date, auditor, findings, recommendations, status.                                             │
│  14 Report (proto_014.proto):                                                                                              │
│      • Represents reports generated within the warehouse.                                                                  │
│      • Attributes: id, report_date, author, title, content, status.                                                        │
│  15 Supplier (proto_001.proto):                                                                                            │
│      • Represents suppliers providing components.                                                                          │
│      • Attributes: id, name, contact, email, address, phone.                                                               │
│                                                                                                                            │
│ This model covers various aspects of warehouse management, including inventory, orders, shipments, returns, employees,     │
│ departments, purchase orders, invoices, payments, maintenance, audits, and reports.                                        │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
```
