# ITSM Concepts
Cumulative
Description
ITSM Concepts : Description
## What is ITSM?

ITSM or Information Technology Service Management, is the process based practice which aligns the delivery of IT services with the needs of an organization. ITSM refers to the entirety of activities - directed by policies and standard operating procedures that help an organization design, plan, deliver, operate, and control IT services delivered to customers.

ITSM has three main objectives:

- To align IT services with the current and future needs of the business and its customers
- To improve the quality of the IT services delivered
- To reduce the long term cost of service provision

![ITSM Objectives](./pkcgu8h9.png)
## Core ITSM Disciplines

- Service Support = Day to day operational support of IT services
- Service Delivery = Long term planning and improvement of IT service provision

Under both of these categories, we have processes that are aligned with these goals. For example under Service Support we have incident management. Incident management, and all the processes under both service support and service delivery are sets of processes that have standard operating procedures to help them run efficiently. These standard operating procedures are often defined and organized by ITIL, the Information Technology Infrastructure Library, which we will discuss separately from here.

![ITSM Objectives](./x2drugvp.png)

# **Introduction to ServiceNow (ChatGPT Generated)**
ServiceNow is a cloud-based IT Service Management (ITSM) platform that automates and streamlines IT workflows. It is widely used for managing IT services, incidents, problems, changes, and asset management.

Key Features of ServiceNow:
- **Incident Management**: Tracks and resolves IT issues.
- **Change Management**: Helps in assessing and managing IT changes.
- **Problem Management**: Identifies root causes of IT issues.
- **Asset and Configuration Management**: Manages IT assets and configurations.
- **Self-Service Portal**: Allows users to submit tickets and check the status of requests.

ServiceNow extends beyond ITSM and includes modules for HR, security operations, customer service, and more.


# ITIL Overview
## RevPro
Cumulative
Description
ITIL Overview : Description

ITIL, or Information Technology Infrastructure Library, is a set of detailed best practices for ITSM that focuses on aligning IT services with the needs of the business. ITIL helps organizations improve service levels and reduce cost by defining a set of interlocking processes for Service Support and Service Delivery.

- 🗒️ Note: There are different versions of the ITIL framework and it is maintained by Axelos. The current version as of this writing is ITIL 4. We will learn about ITIL via version 3 in this unit.

ITIL Roles

Roles are defined as collections of specific responsibilities and privileges. Roles may be help by individuals or teams. Individuals and teams may hold more than one role.

ITIL emphasizes a number of standard roles:

- Service Owner = Accountable for the overall design, performance, integration, improvement, and management of a single service.
- Process Owner = Accountable for the overall design, performance, integration, improvement, and management of a single process.
- Service Manager = Accountable for the development, performance, and improvement of all services in an environment.
- Product Manager = Accountable for the development, performance, and improvement of the entire product.

The Service Lifecycle

The Service Lifecycle defines the core set of best practices and procedures that make up ITIL. There are five core stages to the lifecycle, and each stage has one or more set of processes.

- Service Strategy
    - Strategy Generation
    - Financial Management
    - Service Portfolio Management
    - Demand Management
- Service Design
    - Capacity, Availability, Info Security Management
    - Service level & Supplier Management
- Service Operation
    - Problem & Incident Management
    - Request Fulfillment
    - Event & Access Management
- Service Transition
    - Planning & Support
    - Release & Deployment
    - Asset & Config Management
    - Change Management
    - Knowledge Management
- Continual Service Improvement
    - Service measurements & reporting
    - 7-step-improvement process

## ChatGPT
ITIL is a widely accepted ITSM framework that provides best practices for managing IT services efficiently. It is structured around five core stages in the service lifecycle:

1. **Service Strategy** – Defines business objectives and the IT services needed to support them.
2. **Service Design** – Designs new services and improves existing ones.
3. **Service Transition** – Ensures smooth deployment of IT services.
4. **Service Operation** – Handles daily IT service management activities.
5. **Continual Service Improvement (CSI)** – Focuses on ongoing optimization of services.

Each stage has processes and best practices to ensure IT services align with business goals.

---

# Service Strategy
## Rev Pro
Cumulative
Description
Service Strategy : Description

Service Strategy, one of the key stages of ITIL, attempts to answer the following questions:

- What services are we going to provide?
- Can we afford it?
- Can we provide enough of it?
- How do we gain a competitive advantage?
- What is our vision, mission, and strategic goals?

Service Strategy has four main steps:

- Define the market
- Develop the service offerings
- Develop Strategic Assets
- Prepare of execution

For example, one of the processes of Service Strategy is Demand Management. Demand Management ensures that we don't waste money with excess capacity, i.e. maybe we don't order 4 server racks when we only need 3.

## ChatGPT
The **Service Strategy** phase focuses on defining IT services and ensuring they align with business needs. It answers key questions like:
- What services should IT provide?
- What are the costs and risks?
- How can IT add value to the business?

Key processes:
- **Financial Management for IT Services**: Budgeting, accounting, and charging for IT services.
- **Service Portfolio Management (SPM)**: Managing the entire lifecycle of IT services.
- **Demand Management**: Analyzing customer needs and service demand.
- **Business Relationship Management**: Ensuring IT and business objectives align.

---

# Service Design
## Rev Pro
Cumulative
Description
Service Design : Description

Service Design is a key stage in the ITIL lifecycle that contains its own processes. This stage attempts to answer the following questions:

- How are we going to provide a service?
- How are we going to build a service?
- How are we going to test a service?
- How are we going to deploy a service?

One of the key processes within Service Design is Service Level Management.
Service Level Management

Service Level Management defines agreements between service providers, customers, teams, and vendors. There are three types of agreements:

- Service Level Agreements = Defines the procedures to follow when a service provider is providing services to a customer.
- Operational Level Agreements = Defines the procedures to follow to provide services between internal organization teams.
- Underpinning Contracts = Defines how services should be provided between service providers and vendors.

These agreements can measure things such as response times or resolution times. The agreements will also provide a description of the service so everything is clear for both of the parties involved. An example of a Service Level Agreement may be that our Service Provider must respond to a client query about a service within 4 hours.

## ChatGPT
The **Service Design** phase ensures that new or changed services are designed effectively before they are implemented.

Key processes:
- **Service Level Management (SLM)**: Defines service levels in SLAs (Service Level Agreements).
- **Capacity Management**: Ensures IT infrastructure can handle demand.
- **Availability Management**: Maximizes service uptime and reliability.
- **IT Service Continuity Management (ITSCM)**: Plans for disaster recovery and business continuity.
- **Security Management**: Protects IT assets and data.

This phase ensures services are scalable, secure, and aligned with business needs.

---

# Service Transition
## Rev Pro
Cumulative
Description
Service Transition: Description

Service Transition is a key stage in the ITIL lifecycle and this stage concerns itself with the development work, deployment, testing, and user acceptance of IT services. Essentially this stage will determine how IT teams will execute the vision from the Service Design stage or any planned IT service.

For example, within the Service Design stage we may have determined conditions for a Service Level Agreement. The Service Transition stage will now concern itself with the development work that needs to be completed to ensure that those conditions are met. This could include writing code, making customizations to existing infrastructure, ect.

Service Transition is not only responsible for executing the vision of the Service Design stage, it also concerns itself with any change to implementations of IT services - enter the Change Managment process.
Change Management

Change management is a process of the Service Transition stage. It helps organizations understand changes and minimize risk to IT services. There are three types of changes:

- Normal = non-urgent, requires approval
- Standard = non-urgent, follows established path, no approval needed
- Emergency = requires approval but too urgent for normal procedure

Once a change is proposed, it usually needs approval from a governing body, the Change Advisory Board (CAB). The CAB will concern itself the 'seven Rs' when making a decision on a change:

- Who raised the request for change? (Raised)
- What is the reason for the change? (Reason)
- What is the potential return for this change? (Return)
- What are the risks? (Risks)
- What resources do we have? (Resources)
- Who is responsible? (Responsibility)
- Are there any relationships to other changes? (Relationships)
## ChatGPT
The **Service Transition** phase ensures that new or modified services are smoothly deployed with minimal disruption.

Key processes:
- **Change Management**: Controls IT changes to minimize risks.
- **Release & Deployment Management**: Ensures smooth rollout of new IT services.
- **Service Asset & Configuration Management (SACM)**: Manages IT assets and configurations.
- **Knowledge Management**: Stores and shares IT knowledge for better support.

This phase helps organizations introduce new services without negatively impacting existing ones.

---

# Service Operations
## Rev Pro
Cumulative
Description
Service Operations : Description

The Service Operations stage of the ITIL Framework contains processes for executing the day-to-day operations of IT services. While Service Strategy, Service Design, and Service Transition are all involved with planning and developing IT services, Service Operations concerns itself with how to run these services once they are already established and in use.

For example, one of the processes involved in Service Operations include Incident Management. Incident management describes the standard operating procedures that should be executed when there are unplanned interruptions to IT services or reductions in their quality. The incidents may be reported from users, technical staff, or automated monitoring tools. Once an incident is reported, it may be handled and resolved by service desk support representatives. This whole process falls into the Service Operations stage.
## ChatGPT
The **Service Operations** phase focuses on day-to-day IT service management to ensure efficient and stable operations.

Key processes:
- **Incident Management**: Resolves IT service issues quickly.
- **Problem Management**: Identifies and eliminates root causes of incidents.
- **Event Management**: Monitors IT events to prevent issues.
- **Access Management**: Controls user access to IT services.
- **Request Fulfillment**: Handles user requests like password resets.

Service Operations ensures IT services run smoothly and meet user expectations.

---

# Continual Service Improvement
## Rev Pro
Cumulative
Description
Continual Service Improvement : Description

Continual Service Improvement (CSI) is the final stage of the ITIL framework and it encompasses all the other stages. CSI concerns itself with ensuring that all service management processes continue to support the business. CSI achieves this while keeping a focus on process owners and service owners. CSI is also responsible for monitoring and enhancing Service Level Achievements.
The 7 steps of CSI

CSI achieves its goals through 7 steps when analyzing the performance of a service:

- Identify the strategy for improvement
- Define what will be measured after making the proposed improvement
- Gather the data after making the change
- Process and clean the data from step 3
- Analyze the information and data received
- Present and use the information to make an informed decision
- Implement the improvement

## ChatGPT
The **Continual Service Improvement (CSI)** phase focuses on improving IT services over time based on performance data, feedback, and business goals.

Key activities:
- **Defining Key Performance Indicators (KPIs)**: Tracking service effectiveness.
- **Analyzing Data**: Identifying trends and areas for improvement.
- **Implementing Changes**: Making service improvements based on insights.

The **PDCA (Plan-Do-Check-Act) Cycle** is commonly used in CSI for continuous improvements.


# Utilizing ServiceNow for ITSM (ChatGPT)
ServiceNow provides a powerful platform to implement ITIL best practices and streamline ITSM processes. 

Key ServiceNow ITSM Modules:
- **Incident Management**: Logs, tracks, and resolves IT incidents.
- **Problem Management**: Analyzes recurring issues to prevent future incidents.
- **Change Management**: Manages IT changes with minimal disruption.
- **Asset Management**: Tracks IT assets and their lifecycle.
- **Service Catalog**: Self-service portal for users to request IT services.

ServiceNow automates workflows, improves service efficiency, and enhances IT visibility across an organization.