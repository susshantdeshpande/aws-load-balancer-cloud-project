☁️ AWS Load Balancer Cloud Project

🚀 A Production-Style AWS Infrastructure Project

This project demonstrates how to deploy a scalable cloud web application using AWS networking and load balancing architecture.

The application is automatically deployed on EC2 instances using User Data automation.

---

🏗️ Cloud Architecture

"Architecture" (architecture/aws-architecture.png)

This architecture ensures high availability, scalability, and fault tolerance by distributing incoming traffic across multiple EC2 instances using an Application Load Balancer.

---

🌐 Application Output

"Website Output" (screenshots/website-output.png)

The webpage is deployed automatically during EC2 instance launch using a User Data script.

---

⚙️ AWS Services Used

Service| Purpose
Amazon VPC| Custom cloud network
Public Subnets| Load Balancer placement
Private Subnets| EC2 application servers
Internet Gateway| Internet connectivity
NAT Gateway| Private subnet internet access
Application Load Balancer| Traffic distribution
Target Group| Instance routing
EC2 Ubuntu| Application hosting
Nginx| Web server

---

🔁 Traffic Flow

User
   │
   ▼
Application Load Balancer
   │
   ▼
Target Group
   │
   ▼
EC2 Instances

The load balancer distributes incoming traffic across multiple servers to ensure high availability and performance.

---

🤖 Automation Using User Data

The EC2 instances are automatically configured during launch using the following script.

Script location:

userdata/install-nginx.sh

The script performs:

- System update
- Nginx installation
- Automatic website deployment
- Service enablement

---

🚀 Deployment Steps

1️⃣ Create Custom VPC
2️⃣ Create Public & Private Subnets
3️⃣ Attach Internet Gateway
4️⃣ Create NAT Gateway
5️⃣ Configure Route Tables
6️⃣ Launch EC2 Instances (Ubuntu)
7️⃣ Add User Data Script
8️⃣ Create Target Group
9️⃣ Create Application Load Balancer
🔟 Register EC2 Instances
1️⃣1️⃣ Access via Load Balancer DNS

Detailed steps available in:

docs/setup-guide.md

---

📂 Project Structure

aws-load-balancer-cloud-project
│
├── architecture
│   └── aws-architecture.png
│
├── userdata
│   └── install-nginx.sh
│
├── screenshots
│   └── website-output.png
│
├── docs
│   └── setup-guide.md
│
└── README.md

---

👨‍💻 Author

Sushant Deshpande

DevOps / Cloud Infrastructure Project
Demonstrating scalable AWS architecture with automated deployment.

---
