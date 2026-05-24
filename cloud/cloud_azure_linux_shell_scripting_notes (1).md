# Cloud Computing, Azure, Linux, and Shell Scripting Notes

## Introduction

These notes explain important beginner concepts in cloud computing, Azure infrastructure, Linux, terminal usage, shell scripting, and automation.

The explanations are written in a simple and human-friendly way so they can be used for assignments, revision, or exam preparation.

---

# 1. Traditional Infrastructure vs Cloud Computing

## What is Traditional Infrastructure?

Traditional infrastructure means a company hosts and manages its own IT systems using physical equipment.

This usually includes:

- Physical servers
- Local networking equipment
- On-premises storage devices
- Internal data centers or server rooms
- Manual hardware maintenance

In this setup, the company is responsible for buying, installing, configuring, upgrading, securing, and maintaining all equipment.

---

## Example Scenario

A company currently hosts its application using:

- Physical servers
- Local networking equipment
- On-premises storage

The company faces these problems:

- Hardware failures
- Expensive upgrades
- Long deployment times
- Difficulty handling sudden traffic increases

Management now wants to migrate to the cloud.

---

## Three Major Problems with Traditional Infrastructure

### 1. Hardware Failure

One major problem with traditional infrastructure is that it depends heavily on physical hardware.

If a physical server, hard drive, storage device, or network device fails, the application may become unavailable. The company may need to wait for technicians to repair or replace the damaged equipment.

This can cause:

- Downtime
- Loss of business
- Poor customer experience
- Data access problems
- Extra repair costs

For example, if the main application server fails, users may not be able to access the company’s website or system until the server is fixed.

---

### 2. Expensive and Slow Upgrades

Traditional infrastructure can be expensive because the company must buy new hardware whenever it needs more capacity.

For example, if the company needs more storage or computing power, it may need to purchase:

- New servers
- Extra hard drives
- Networking devices
- Backup systems
- Cooling equipment
- Power supply equipment

This process usually takes time because the company must plan the upgrade, buy the equipment, wait for delivery, install it, configure it, and test it.

This leads to:

- High upfront cost
- Long waiting time
- Complex maintenance
- Increased operational burden

---

### 3. Difficulty Handling Sudden Traffic Increases

Traditional infrastructure is not very flexible when traffic suddenly increases.

If many users visit the application at the same time, the physical servers may not have enough power to handle the traffic.

The company cannot easily add new servers immediately because new hardware must be purchased and installed first.

This can result in:

- Slow application performance
- System crashes
- Poor user experience
- Lost revenue
- Missed business opportunities

For example, if an online store gets sudden traffic during a promotion, the server may become overloaded and stop responding.

---

# 2. How Cloud Computing Solves These Problems

## What is Cloud Computing?

Cloud computing means using computing resources over the internet instead of owning and managing physical infrastructure.

Cloud services can include:

- Virtual machines
- Storage
- Databases
- Networking
- Security tools
- Application hosting
- Backup and disaster recovery
- Monitoring and automation tools

Examples of cloud providers include:

- Microsoft Azure
- Amazon Web Services, AWS
- Google Cloud Platform, GCP

---

## How Cloud Computing Solves Hardware Failure

Cloud providers operate large data centers with redundant systems.

This means they have backup servers, backup power, backup networking, and disaster recovery systems.

If one physical server fails, the cloud provider can move workloads to another available server or restart services in another location.

Cloud computing helps reduce downtime through:

- High availability
- Redundancy
- Backup systems
- Disaster recovery options
- Multiple data centers

This makes applications more reliable compared to relying on one physical server in an office building.

---

## How Cloud Computing Reduces Upgrade Cost and Delay

In the cloud, companies do not need to buy physical servers before using them.

Instead, they rent resources from a cloud provider and pay based on usage.

This means the company can increase or reduce resources when needed.

Benefits include:

- No large upfront hardware purchase
- Faster resource provisioning
- Lower maintenance responsibility
- Pay-as-you-go pricing
- Easier upgrades

For example, instead of buying a new physical server, a company can create a virtual machine in Azure within minutes.

---

## How Cloud Computing Improves Scalability

Cloud computing allows companies to scale resources quickly.

Scaling means increasing or reducing resources based on demand.

There are two common types of scaling:

### Vertical Scaling

This means increasing the power of an existing server.

For example:

- More CPU
- More RAM
- More storage

### Horizontal Scaling

This means adding more servers to share the workload.

For example:

- Adding more virtual machines
- Using load balancers
- Running more application instances

Cloud computing makes scaling faster because resources can be added without waiting for physical hardware delivery.

---

## One Disadvantage of Cloud Computing

One possible disadvantage of cloud computing is dependency on the internet and the cloud provider.

If the company’s internet connection fails, users may have difficulty accessing cloud services.

Also, if the cloud provider experiences an outage, the company’s applications may be affected.

To prepare for this, companies should use:

- Backup internet connections
- Monitoring tools
- Disaster recovery plans
- Multi-region deployment
- Regular backups
- Service-level agreements, SLAs

---

# 3. Cloud Deployment Models

Cloud deployment models describe how cloud infrastructure is owned, managed, and accessed.

The main deployment models are:

- Public Cloud
- Private Cloud
- Hybrid Cloud

---

## Public Cloud

A public cloud is owned and managed by a third-party cloud provider.

Examples include:

- Microsoft Azure
- AWS
- Google Cloud

The infrastructure is shared by many customers, but each customer’s resources are logically separated and secured.

### Advantages of Public Cloud

- Fast deployment
- Lower upfront cost
- High scalability
- Pay-as-you-go pricing
- Access to many cloud services

### Disadvantages of Public Cloud

- Less direct control over infrastructure
- Compliance concerns for sensitive industries
- Possible vendor lock-in
- Internet dependency

---

## Private Cloud

A private cloud is used by one organization only.

It can be hosted:

- On-premises
- In a private data center
- By a third-party provider

Private cloud gives the organization more control over security, compliance, and infrastructure configuration.

### Advantages of Private Cloud

- Stronger control
- Better isolation
- Suitable for sensitive data
- Easier compliance management

### Disadvantages of Private Cloud

- More expensive
- Slower to scale
- Requires more management
- May need specialized staff

---

## Hybrid Cloud

A hybrid cloud combines private cloud and public cloud.

This allows an organization to keep sensitive data in a private environment while using the public cloud for scalability, testing, analytics, or less sensitive workloads.

### Advantages of Hybrid Cloud

- Balances security and scalability
- Supports compliance requirements
- Allows sensitive data to remain controlled
- Uses public cloud for traffic spikes
- Gives flexibility for different workloads

### Disadvantages of Hybrid Cloud

- More complex to manage
- Requires strong networking
- Needs clear security policies
- Can be harder to monitor

---

# 4. Fintech Banking Application Scenario

## Scenario

A fintech startup is building a banking application.

The requirements are:

- Customer financial data must remain highly secure
- Developers want rapid application deployment
- The company expects traffic spikes during salary payment periods
- Strict compliance policies exist

---

## Recommended Deployment Model: Hybrid Cloud

The best deployment model for this scenario is **Hybrid Cloud**.

---

## Technical Justification

A fintech company handles sensitive financial data, so security and compliance are very important.

A hybrid cloud allows the startup to keep highly sensitive customer data and core banking systems in a private cloud or controlled environment.

At the same time, the company can use public cloud services for:

- Application hosting
- Testing environments
- Analytics
- Customer-facing services
- Traffic spikes
- Rapid deployment

During salary payment periods, traffic may increase suddenly. Public cloud resources can help the company scale quickly to handle the extra demand.

Meanwhile, sensitive banking records can remain protected in the private cloud.

This gives the company a balance between:

- Security
- Compliance
- Flexibility
- Scalability
- Fast deployment

---

## Why Public Cloud Alone May Not Be Enough

Public cloud is good for rapid deployment and scalability, but it may not provide the level of control required for highly sensitive banking data.

Although public cloud platforms can be very secure, some financial regulations may require stricter isolation, data control, and compliance management.

So, public cloud alone may not fully satisfy the requirement for tightly controlled financial data.

---

## Why Private Cloud Alone May Not Be Enough

Private cloud gives strong security and control, but it can be expensive and slower to scale.

If the fintech application experiences traffic spikes during salary periods, a private cloud may not scale as easily or quickly as the public cloud.

Private cloud may also slow down rapid development if infrastructure provisioning is more manual.

---

## Why Hybrid Cloud is the Best Option

Hybrid cloud combines the best parts of both public and private cloud.

The fintech company can use:

- Private cloud for sensitive customer financial data
- Public cloud for application scaling and rapid deployment

This is why hybrid cloud is the most suitable option for this scenario.

---

# 5. Cloud Service Models

Cloud service models describe what level of responsibility the cloud provider manages and what level of responsibility the customer manages.

The three main service models are:

- IaaS
- PaaS
- SaaS

---

## IaaS: Infrastructure as a Service

IaaS provides basic computing infrastructure over the internet.

Examples include:

- Virtual machines
- Storage
- Networking
- Firewalls
- Load balancers

With IaaS, the cloud provider manages the physical infrastructure, but the customer usually manages:

- Operating system
- Runtime environment
- Applications
- Security patches
- Middleware
- Data

### Example IaaS Services

- Azure Virtual Machines
- AWS EC2
- Google Compute Engine

### When to Use IaaS

Use IaaS when you need more control over the server, operating system, and infrastructure configuration.

---

## PaaS: Platform as a Service

PaaS provides a platform where developers can build, test, deploy, and manage applications without managing the underlying servers.

With PaaS, the cloud provider manages:

- Servers
- Operating systems
- Runtime environments
- Infrastructure patching
- Scaling tools

The developer focuses mainly on:

- Writing code
- Deploying applications
- Managing application logic
- Managing data

### Example PaaS Services

- Azure App Service
- Heroku
- Google App Engine
- AWS Elastic Beanstalk

### When to Use PaaS

Use PaaS when developers want to build and deploy custom applications quickly without managing servers or operating systems.

---

## SaaS: Software as a Service

SaaS provides ready-made software that users access over the internet.

The user does not manage the application code, servers, or infrastructure.

### Example SaaS Applications

- Gmail
- Microsoft 365
- Salesforce CRM
- Dropbox
- Zoom

### When to Use SaaS

Use SaaS when you want to use an already-built software application instead of building your own.

---

# 6. PaaS Scenario Explanation

## Scenario

A software company wants to build and deploy applications quickly.

The developers say:

> We do not want to manage servers, operating systems, runtime environments, or infrastructure patching.

The security team says:

> We still want flexibility to develop our own applications.

---

## Best Cloud Service Model: PaaS

The best model for this scenario is **Platform as a Service, PaaS**.

---

## Why PaaS Fits This Scenario

PaaS allows developers to create their own applications without managing the underlying infrastructure.

Developers can focus on writing application code while the cloud provider manages the servers, operating systems, runtime environments, and patching.

This makes development faster and reduces operational workload.

---

## Why PaaS is Better Than SaaS

SaaS is ready-made software.

If the company uses SaaS, it will mostly use an existing application instead of building its own custom application.

However, the company wants flexibility to develop its own applications.

PaaS is better because it allows custom application development while still reducing infrastructure management.

In simple terms:

- SaaS means using software already built by someone else.
- PaaS means building your own application on a managed platform.

---

## Why PaaS is Less Operationally Demanding Than IaaS

IaaS gives more control, but it also requires more management.

With IaaS, the company may still need to manage:

- Virtual machines
- Operating systems
- Security patches
- Runtime installations
- Server configuration
- Scaling configuration

With PaaS, the cloud provider handles most of these tasks.

This reduces the workload for developers and operations teams.

In simple terms:

- IaaS gives more control but more responsibility.
- PaaS gives enough flexibility with less operational work.

---

# 7. Shell Scripting and Automation

## What is Shell Scripting?

Shell scripting means writing a file that contains a list of shell commands.

These commands can be executed automatically instead of typing them one by one.

Shell scripts are commonly used in Linux and cloud operations to automate repetitive tasks.

A shell script usually has a `.sh` file extension.

Example:

```bash
backup.sh
```

---

## Example of a Simple Shell Script

```bash
#!/bin/bash

echo "Checking disk usage..."
df -h

echo "Listing log files..."
ls /var/log
```

This script checks disk usage and lists files inside the `/var/log` directory.

---

## How Shell Scripting Can Improve an Environment

If engineers are manually backing up logs, checking disk usage, creating folders, and generating reports every day, shell scripting can help automate those tasks.

Instead of repeating the same commands manually, engineers can write scripts to perform the tasks automatically.

Shell scripting can be used to:

- Back up logs
- Check disk usage
- Create folders
- Generate reports
- Clean temporary files
- Monitor system health
- Restart services
- Send alerts
- Run scheduled tasks

Scripts can also be scheduled using tools like `cron`.

For example, a backup script can run every night at 12:00 AM without human involvement.

---

## Benefits of Automation in Cloud Operations

### 1. Saves Time and Improves Productivity

Automation reduces the time engineers spend on repetitive manual tasks.

Instead of manually checking disk usage or backing up logs every day, a script can do it automatically.

This allows engineers to focus on more important tasks such as:

- Improving system performance
- Fixing security issues
- Building new features
- Monitoring infrastructure
- Planning better architecture

---

### 2. Reduces Human Error

Manual tasks can easily lead to mistakes.

For example, an engineer may type the wrong command, delete the wrong file, or forget to run a backup.

Automation helps reduce these mistakes because scripts run the same way every time.

If the script is tested properly, it can make operations more reliable and consistent.

---

## Risk of Poorly Written Automation Scripts

A poorly written automation script can cause serious problems.

For example, a script meant to delete old log files may accidentally delete important files if the path is wrong.

This can lead to:

- Data loss
- Downtime
- Security problems
- Broken applications
- Incorrect reports
- Failed backups

That is why scripts should be tested carefully before being used in production.

Good practices include:

- Testing scripts in a safe environment first
- Using clear file paths
- Adding confirmation checks before deleting files
- Keeping backups
- Adding error handling
- Reviewing scripts before deployment

---

# 8. Azure Resource Hierarchy

Azure resources are organized in a hierarchy.

The correct hierarchy is:

```text
Management Group
→ Subscription
→ Resource Group
→ Resource
```

---

## Explanation of Each Level

### Management Group

A management group is used to organize multiple Azure subscriptions.

Large companies use management groups to apply policies and governance rules across many subscriptions.

Example:

```text
Company Management Group
```

---

### Subscription

A subscription is the billing and access boundary in Azure.

Resources are created under a subscription, and Azure charges are linked to that subscription.

Example:

```text
Production Subscription
Development Subscription
Testing Subscription
```

---

### Resource Group

A resource group is a logical container for Azure resources.

It helps organize related resources together.

For example, a resource group named `Production-RG` may contain:

- Virtual Machines
- Storage Accounts
- Databases
- Virtual Networks

Resource groups make it easier to manage resources as a unit.

---

### Resource

A resource is an actual Azure service created inside a resource group.

Examples of Azure resources include:

- Virtual Machine
- Storage Account
- SQL Database
- Virtual Network
- App Service
- Load Balancer

---

## Azure Hierarchy Example

```text
Management Group
└── Subscription
    └── Resource Group: Production-RG
        ├── Virtual Machine
        ├── Storage Account
        └── Database
```

---

## Why Resource Groups Are Useful

Resource groups help organizations manage related resources together.

For example, if an application needs a virtual machine, database, and storage account, all of them can be placed inside one resource group.

This makes it easier to:

- Monitor resources
- Manage access
- Apply policies
- Track costs
- Delete related resources together

---

## Important Warning About Resource Groups

If a resource group is deleted, the resources inside it are usually deleted too.

For example, if `Production-RG` contains virtual machines, storage accounts, and databases, deleting the resource group can delete all those resources.

This is why companies must be careful when deleting resource groups.

---

# 9. Terminal vs Shell

## Are Terminal and Shell the Same?

No, terminal and shell are not the same, but they work together.

---

## What is a Terminal?

A terminal is the application or window where you type commands.

It provides an interface for users to interact with the computer using text commands.

Examples of terminals include:

- Terminal on macOS
- GNOME Terminal on Linux
- Windows Terminal
- Command Prompt
- PowerShell window

The terminal displays what you type and shows the output of commands.

---

## What is a Shell?

A shell is the program that reads, understands, and executes the commands you type.

Examples of shells include:

- Bash
- Zsh
- Fish
- PowerShell

The shell takes your command, interprets it, and tells the operating system what to do.

---

## Simple Way to Remember

```text
Terminal = where you type commands
Shell = what understands and runs the commands
```

---

## Example

When you open Terminal on macOS and type:

```bash
ls
```

The terminal shows the command and displays the result.

The shell processes the `ls` command and tells the system to list files in the current directory.

So, the terminal is the interface, while the shell is the command interpreter.

---

# 10. Common Linux Commands

## `cd`

The `cd` command means change directory.

Example:

```bash
cd /var/log
```

This moves the user into the `/var/log` directory.

The `/var/log` directory usually contains system log files.

---

## `ls`

The `ls` command lists files and folders in the current directory.

Example:

```bash
ls
```

If the user first runs:

```bash
cd /var/log
```

and then runs:

```bash
ls
```

It means the user is navigating to the system log directory and listing the files inside it.

---

## `df -h`

The `df -h` command shows disk usage in a human-readable format.

Example:

```bash
df -h
```

It shows available and used disk space.

---

## `mkdir`

The `mkdir` command creates a new folder.

Example:

```bash
mkdir reports
```

This creates a folder named `reports`.

---

## `chmod +x`

The `chmod +x` command gives execute permission to a script.

Example:

```bash
chmod +x backup.sh
```

This allows the script to be executed.

---

# 11. What Does `#!/bin/bash` Mean?

The first line of many shell scripts is:

```bash
#!/bin/bash
```

This is called a **shebang**.

It tells the system which interpreter should run the script.

In this case, it tells the system to run the script using the Bash shell.

---

## Important Note

Although `#!/bin/bash` starts with `#`, it is not treated like a normal comment when it appears as the first line of a script.

It has a special meaning.

It does not:

- Set the working directory
- Grant execute permission
- Restart the system

It only tells the system which interpreter to use.

---

# 12. Quick Exam Revision Summary

## Traditional Infrastructure Problems

Traditional infrastructure can have problems such as:

- Hardware failure
- Expensive upgrades
- Long deployment time
- Poor scalability
- Wasted resources from over-provisioning

---

## Cloud Computing Benefits

Cloud computing provides:

- Scalability
- Elasticity
- High availability
- Faster deployment
- Pay-as-you-go pricing
- Disaster recovery options

---

## Deployment Models

```text
Public Cloud  = Shared cloud infrastructure managed by a provider
Private Cloud = Cloud environment dedicated to one organization
Hybrid Cloud  = Combination of private cloud and public cloud
```

---

## Service Models

```text
IaaS = Infrastructure as a Service
PaaS = Platform as a Service
SaaS = Software as a Service
```

Simple comparison:

```text
IaaS = You manage OS and applications
PaaS = You manage applications only
SaaS = You simply use the software
```

---

## Azure Hierarchy

```text
Management Group → Subscription → Resource Group → Resource
```

---

## Terminal and Shell

```text
Terminal = where commands are typed
Shell = what interprets and runs the commands
```

---

## Shell Scripting

Shell scripting is useful for automating tasks such as:

- Backups
- Log management
- Disk checks
- Report generation
- Folder creation
- System monitoring

---

# 13. Final Assignment Answer Summary

## Question 1 Summary

The company’s traditional infrastructure has problems such as hardware failure, expensive upgrades, and difficulty handling sudden traffic increases.

Cloud computing solves these problems by providing high availability, pay-as-you-go resources, faster deployment, and scalability.

One disadvantage of cloud computing is dependency on internet connectivity and the cloud provider.

---

## Question 2 Summary

The best deployment model for the fintech banking application is Hybrid Cloud.

This is because hybrid cloud allows sensitive financial data to remain in a private environment while public cloud resources can be used for rapid deployment and traffic spikes.

Public cloud alone may not provide enough control for sensitive financial data, while private cloud alone may be slower and more expensive to scale.

---

## Question 3 Summary

The best cloud service model is PaaS.

PaaS allows developers to build and deploy their own applications without managing servers, operating systems, runtime environments, or infrastructure patching.

It is better than SaaS because SaaS provides ready-made software, while the company wants to build custom applications.

It is less demanding than IaaS because the provider manages more of the infrastructure.

---

## Question 4 Summary

Shell scripting can automate repetitive tasks such as backing up logs, checking disk usage, creating folders, and generating reports.

Two benefits of automation are saving time and reducing human error.

One risk of poorly written automation scripts is that they can accidentally delete important files or cause system problems.

---

# Conclusion

Cloud computing helps organizations move away from expensive and slow traditional infrastructure.

It provides faster deployment, better scalability, improved disaster recovery, and more flexible resource management.

For sensitive industries such as fintech and healthcare, hybrid cloud is often useful because it balances security, control, and scalability.

Shell scripting and automation are also important skills because they help engineers reduce manual work and improve reliability in cloud operations.
