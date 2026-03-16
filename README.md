AWS Load Balancer Cloud Project

This project demonstrates how to deploy a scalable web application using AWS cloud infrastructure with a custom VPC and Application Load Balancer.

---

📌 Architecture Diagram

"Architecture" (architecture/aws-architecture.png)

The above architecture shows how traffic flows from users to the application through AWS networking and load balancing services.

---

🖥️ Project Output

"Website Output" (screenshots/website-output.png)

The web page is automatically deployed on EC2 instances using a User Data script during instance launch.

---

⚙️ AWS Services Used

- Amazon VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- NAT Gateway
- Application Load Balancer
- Target Group
- EC2 Ubuntu Instances
- Nginx Web Server

---

🔄 Architecture Flow

User
⬇
Application Load Balancer
⬇
Target Group
⬇
EC2 Instances

The load balancer distributes incoming traffic across multiple EC2 instances to ensure high availability and scalability.

---

🤖 Automation Using User Data

The EC2 instances are automatically configured using a User Data script which:

- Updates the system
- Installs Nginx web server
- Deploys the HTML cloud project page
- Enables the Nginx service

Script location:

userdata/install-nginx.sh

---

🚀 Deployment Steps

1. Create a Custom VPC
2. Create Public and Private Subnets
3. Attach Internet Gateway
4. Create NAT Gateway
5. Configure Route Tables
6. Launch EC2 Ubuntu Instances
7. Add User Data Script
8. Create Target Group
9. Create Application Load Balancer
10. Register EC2 Instances
11. Access the application via Load Balancer DNS

Detailed setup steps are available in:

docs/setup-guide.md

---

👨‍💻 Author

Sushant Deshpande

Cloud / DevOps Project demonstrating scalable AWS infrastructure using load balancing and automated deployment.
