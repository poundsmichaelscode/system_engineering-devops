# Day 2: Azure Accounts, Subscriptions, Regions, and Resource Groups

## 🎯 Goal

Learn how Azure is organized so you do not get lost in the Azure Portal.

By the end of this lesson, you should understand:

* Tenant vs Subscription vs Management Group vs Resource Group
* Azure Regions and Availability Zones
* How resources are organized in real-world environments
* How to create, tag, and delete a Resource Group

---

# Azure Resource Hierarchy

Azure resources are organized in a hierarchy:

```text
Tenant
│
├── Management Group
│   │
│   ├── Subscription
│   │   │
│   │   ├── Resource Group
│   │   │   ├── Virtual Machine
│   │   │   ├── Storage Account
│   │   │   └── Database
```

---

## 1. Tenant

A Tenant is the highest-level container in Azure.

It represents an organization and contains:

* Users
* Groups
* Applications
* Permissions

### Example

```text
Contoso Organization Tenant
```

A company typically operates within a single Azure tenant.

---

## 2. Management Group

Management Groups help organize multiple subscriptions.

### Why use Management Groups?

* Apply policies across multiple subscriptions
* Manage permissions centrally
* Simplify governance

### Example

```text
Production Management Group
Development Management Group
```

---

## 3. Subscription

A Subscription is primarily:

* A billing boundary
* An access control boundary

### Example

```text
Development Subscription
Testing Subscription
Production Subscription
```

### Benefits

* Separate costs by environment
* Assign different permissions
* Improve resource management

---

## 4. Resource Group

A Resource Group is a logical container for Azure resources.

### Example

```text
RG-WebApp-Dev
```

Resources inside the group may include:

* App Service
* SQL Database
* Storage Account

### Why Resource Groups?

Resources in a Resource Group usually:

* Belong to the same application
* Share the same lifecycle
* Are managed together

---

# Azure Regions

A Region is a physical location containing Azure datacenters.

### Examples

```text
East US
West Europe
South Africa North
```

When deploying resources, Azure asks you to select a region.

## Factors for Choosing a Region

### 1. User Proximity

Choose a region closest to your users to reduce latency.

Example:

```text
Users in Nigeria
→ South Africa North
```

### 2. Compliance Requirements

Some organizations must store data in specific countries or regions.

### 3. Service Availability

Not all Azure services are available in every region.

---

# Availability Zones

Availability Zones are separate datacenters within the same Azure region.

### Example

```text
South Africa North

Zone 1
Zone 2
Zone 3
```

If one zone fails, workloads can continue running in another zone.

## Benefits

* High Availability
* Fault Tolerance
* Disaster Recovery

---

# Resource Organization Best Practices

Engineers typically organize resources by:

## Workload

```text
RG-Ecommerce
RG-HR-System
RG-Inventory
```

---

## Environment

```text
RG-App-Dev
RG-App-Test
RG-App-Prod
```

---

## Lifecycle

Resources that are created and deleted together should belong to the same Resource Group.

Example:

```text
Web App
Database
Storage Account
```

---

# Hands-On Activity

Sketch the following Azure architecture:

```text
Tenant
│
├── Dev Subscription
│   └── RG-WebApp-Dev
│       ├── App Service
│       ├── SQL Database
│       └── Storage Account
│
├── Test Subscription
│   └── RG-WebApp-Test
│       ├── App Service
│       ├── SQL Database
│       └── Storage Account
│
└── Prod Subscription
    └── RG-WebApp-Prod
        ├── App Service
        ├── SQL Database
        └── Storage Account
```

---

# DIY Azure Portal Lab

## Step 1: Sign In

1. Open the Azure Portal.
2. Log in with your Azure account.

---

## Step 2: Create a Resource Group

Navigate to:

```text
Resource Groups → Create
```

Enter:

```text
Subscription: Your Azure Subscription
Resource Group Name: rg-demo-dev
Region: South Africa North
```

Click:

```text
Review + Create
Create
```

---

## Step 3: Add Tags

Open the Resource Group.

Navigate to:

```text
Tags
```

Add:

| Name        | Value   |
| ----------- | ------- |
| environment | dev     |
| owner       | Michael |

Click:

```text
Apply
```

---

## Step 4: Verify

Confirm the Resource Group shows:

```text
Resource Group: rg-demo-dev

Tags:
environment=dev
owner=Michael
```

---

## Step 5: Delete the Resource Group

Navigate to:

```text
Delete Resource Group
```

Type:

```text
rg-demo-dev
```

Click:

```text
Delete
```

---

# Beginner Checkpoint

## 60-Second Explanation

Azure resources are organized in a hierarchy. A Tenant contains subscriptions, subscriptions contain resource groups, and resource groups contain resources such as virtual machines, databases, and storage accounts. Subscriptions separate billing and permissions, while resource groups organize related resources. Regions determine where resources are deployed geographically, and availability zones provide redundancy through multiple datacenters within the same region. Engineers organize resources by workload, environment, and lifecycle to simplify management.

---

# Real-World Use Case

### EduHive Production Environment

```text
Subscription: EduHive Production

Resource Group:
RG-EduHive-Prod

Resources:
- Web App
- PostgreSQL Database
- Storage Account
- Monitoring Services
```

### EduHive Development Environment

```text
Subscription: EduHive Development

Resource Group:
RG-EduHive-Dev
```

This separation ensures that development work does not affect production users.

---

# Key Takeaways

* Tenant is the top-level Azure container.
* Management Groups organize subscriptions.
* Subscriptions provide billing and access boundaries.
* Resource Groups organize related resources.
* Regions determine deployment location.
* Availability Zones improve fault tolerance.
* Resources should be grouped by workload, environment, and lifecycle.
* Tags help identify ownership and purpose.

---

## Next Topic

**Day 3: Azure Compute Services**

Topics:

* Azure Virtual Machines (VMs)
* Azure App Service
* Azure Container Instances
* Azure Kubernetes Service (AKS)
* Azure Functions
* Choosing the right compute option for a workload

