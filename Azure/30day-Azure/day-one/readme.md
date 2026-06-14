# Day 1: Cloud Foundation and the Azure Mindset

## 🎯 Goal

Understand what cloud computing is, why organizations use Microsoft Azure, and the differences between cloud service models and deployment models.

By the end of this lesson, you should be able to:

* Define cloud computing
* Explain why businesses use cloud platforms
* Differentiate between IaaS, PaaS, and SaaS
* Understand Public, Private, and Hybrid Cloud models
* Explain elasticity, scalability, high availability, and shared responsibility
* Navigate the Azure Portal

---

# What is Cloud Computing?

Cloud computing is the delivery of computing services over the internet instead of owning and maintaining physical servers and infrastructure.

These services include:

* Computing power
* Storage
* Databases
* Networking
* Analytics
* Artificial Intelligence
* Security Services

Instead of purchasing expensive hardware, organizations rent resources from cloud providers and pay only for what they use.

## Traditional IT vs Cloud Computing

### Traditional IT

```text
Company Buys:
- Servers
- Storage
- Networking Equipment
- Data Center Space

Company Manages:
- Hardware
- Maintenance
- Security
- Upgrades
```

### Cloud Computing

```text
Cloud Provider Supplies:
- Servers
- Storage
- Networking
- Infrastructure

Customer Uses:
- Applications
- Services
- Resources

Pay only for what you consume.
```

---

# Why Companies Use Azure

Organizations choose Azure because it provides:

## 1. Lower Costs

No need to purchase expensive servers upfront.

### Example

A startup can launch a website without buying hardware worth thousands of dollars.

---

## 2. Global Reach

Applications can be deployed worldwide.

### Example

Users in Nigeria, Europe, and the United States can access the same application with low latency.

---

## 3. Scalability

Resources can increase or decrease based on demand.

### Example

An e-commerce website can handle increased traffic during Black Friday sales.

---

## 4. Reliability

Azure provides multiple datacenters and backup systems.

Applications remain available even when hardware fails.

---

## 5. Security

Azure includes built-in security tools, monitoring, compliance, and identity management.

---

# Cloud Service Models

There are three primary cloud service models.

---

## 1. Infrastructure as a Service (IaaS)

The cloud provider manages the infrastructure.

You manage:

* Operating Systems
* Applications
* Data

### Example Services

* Azure Virtual Machines
* Azure Virtual Network

### Analogy

Renting an empty apartment.

You furnish and manage everything inside.

---

## 2. Platform as a Service (PaaS)

The cloud provider manages:

* Infrastructure
* Operating Systems
* Runtime Environment

You focus on:

* Code
* Applications
* Data

### Example Services

* Azure App Service
* Azure SQL Database

### Analogy

Renting a fully furnished apartment.

You simply move in and use it.

---

## 3. Software as a Service (SaaS)

The provider manages everything.

Users simply use the software.

### Examples

* Microsoft 365
* Gmail
* Dropbox
* Zoom

### Analogy

Staying in a hotel.

Everything is provided and maintained for you.

---

# Cloud Deployment Models

---

## Public Cloud

Infrastructure is owned and managed by a cloud provider.

### Examples

* Microsoft Azure
* Amazon Web Services (AWS)
* Google Cloud Platform (GCP)

### Benefits

* Lower cost
* High scalability
* No infrastructure maintenance

---

## Private Cloud

Infrastructure is dedicated to a single organization.

### Benefits

* Greater control
* Increased customization
* Enhanced security requirements

### Example

A large bank operating its own private datacenter.

---

## Hybrid Cloud

Combines Public Cloud and Private Cloud.

Some workloads remain on-premises while others run in the cloud.

### Example

A hospital stores sensitive patient data locally but hosts its public website in Azure.

---

# Key Cloud Concepts

---

## Elasticity

The ability to automatically add or remove resources based on demand.

### Example

```text
Morning Traffic: 100 Users
Evening Traffic: 10,000 Users

Azure automatically adjusts resources.
```

---

## Scalability

The ability to increase capacity when needed.

### Vertical Scaling

```text
Small Server
→ Bigger Server
```

### Horizontal Scaling

```text
1 Server
→ 10 Servers
```

---

## High Availability

Ensures applications remain accessible even during failures.

### Example

If one server fails, another server continues serving users.

---

## Regions

Azure Regions are geographical locations containing one or more datacenters.

### Examples

```text
East US
West Europe
South Africa North
```

Applications are deployed to regions closest to users.

---

## Availability Zones

Availability Zones are physically separate datacenters within the same region.

### Example

```text
South Africa North

Zone 1
Zone 2
Zone 3
```

If one zone experiences an outage, workloads continue operating in another zone.

---

## Shared Responsibility Model

Security responsibilities are shared between Microsoft and the customer.

### Microsoft is Responsible For

* Physical Datacenters
* Hardware
* Networking
* Physical Security

### Customer is Responsible For

* User Accounts
* Passwords
* Data
* Application Security
* Access Permissions

---

## Consumption-Based Pricing

Azure follows a pay-as-you-go model.

### Example

```text
Storage Used = 50 GB
Virtual Machine Runtime = 10 Hours

You pay only for what you consume.
```

Benefits:

* No large upfront costs
* Easy budgeting
* Cost-efficient scaling

---

# Hands-On Activity

Create a one-page explanation of cloud computing in your own words.

Include:

1. What cloud computing is
2. Why companies use it
3. Advantages over traditional infrastructure
4. Real-world examples

---

# Five Companies That Likely Use Cloud Infrastructure

Examples include:

1. Netflix
2. Spotify
3. Uber
4. Airbnb
5. Microsoft Teams

These services require massive scalability, availability, and global reach.

---

# DIY Azure Beginner Lab

## Step 1: Create a Microsoft Learn Account

Create a free account using your Microsoft account.

---

## Step 2: Explore Azure Free Account Options

Review:

* Free Services
* Trial Credits
* Always-Free Resources

Understand what can be used without incurring charges.

---

## Step 3: Access the Azure Portal

Open:

https://portal.azure.com

Sign in with your Microsoft account.

---

## Step 4: Explore the Portal

Navigate through:

```text
Home
Resource Groups
Virtual Machines
Storage Accounts
Networking
Monitor
Cost Management
```

Do not create paid resources yet.

Simply become familiar with the interface.

---

# Beginner Checkpoint

## 60-Second Explanation

Cloud computing is the delivery of computing resources over the internet. Instead of purchasing and maintaining physical servers, organizations rent infrastructure and services from cloud providers such as Microsoft Azure. Azure offers different service models, including IaaS, PaaS, and SaaS, allowing organizations to choose how much infrastructure they want to manage. Cloud platforms provide scalability, elasticity, high availability, global deployment options, and pay-as-you-go pricing, making them cost-effective and reliable for modern applications.

---

# Real-World Use Case

Imagine you are building EduHive.

Instead of buying:

* Physical Servers
* Networking Equipment
* Storage Hardware

You can deploy the application on Azure using:

```text
Azure App Service
Azure Database
Azure Storage
Azure Monitoring
```

As the number of users grows, Azure automatically scales resources without requiring new hardware purchases.

---

# Key Takeaways

* Cloud computing delivers IT resources over the internet.
* Azure is Microsoft's cloud platform.
* IaaS provides infrastructure.
* PaaS provides a managed development platform.
* SaaS provides ready-to-use software.
* Public, Private, and Hybrid Clouds serve different business needs.
* Elasticity and scalability help applications grow.
* High availability reduces downtime.
* Azure uses a shared responsibility model.
* Pricing is based on resource consumption.

---

## Next Topic

**Day 2: Azure Accounts, Subscriptions, Regions, and Resource Groups**

