#!/bin/bash

apt update -y
apt install nginx -y

cat <<EOF > /var/www/html/index.html

<!DOCTYPE html><html>
<head><title>Sushant Cloud Project</title><style>

body{
margin:0;
font-family:Arial;
background:linear-gradient(120deg,#2193b0,#6dd5ed);
height:100vh;
display:flex;
align-items:center;
justify-content:center;
}

.main{

width:950px;
background:white;
border-radius:12px;
box-shadow:0px 8px 25px rgba(0,0,0,0.3);

padding:25px;

}

h1{
text-align:center;
color:#0d6efd;
margin-bottom:5px;
}

.subtitle{
text-align:center;
margin-bottom:15px;
color:#555;
}

.container{

display:flex;
gap:20px;

}

.login{

width:40%;
background:#f4f9ff;

padding:20px;
border-radius:10px;

}

.login h3{

margin-top:0;
text-align:center;

}

input,textarea{

width:100%;
padding:8px;

margin-top:6px;
margin-bottom:10px;

border-radius:5px;
border:1px solid #ccc;

}

button{

width:100%;
padding:10px;

background:#0d6efd;
color:white;

border:none;
border-radius:5px;

}

.about{

width:60%;
background:#eef7ff;

padding:20px;

border-radius:10px;

}

.about h2{

margin-top:0;
color:#0d6efd;

}

.about ul{

padding-left:20px;

}

.server{

text-align:center;
margin-top:10px;
font-weight:bold;

}

footer{

text-align:center;
margin-top:10px;
font-size:14px;
color:#666;

}

</style></head><body><div class="main"><h1>Welcome to Sushant Cloud</h1>
<p class="subtitle">Powered by AWS Load Balancer</p><div class="container"><div class="login"><h3>User Login</h3><input type="text" placeholder="Enter Your Name"><input type="text" placeholder="Mobile Number"><textarea placeholder="Suggestion"></textarea><button>Submit</button>

</div><div class="about"><h2>About This Cloud Project</h2><p>
This website demonstrates how a scalable cloud application can be deployed using AWS infrastructure.
The project showcases Load Balancing and multi-region server architecture.
</p><h3>Architecture Steps</h3><ul><li>EC2 instance launched using AWS Free Tier</li><li>Nginx Web Server installed using User Data</li><li>Website automatically deployed during instance launch</li><li>Multiple EC2 instances created across regions</li><li>AWS Target Group configured for load balancing</li><li>AWS Application Load Balancer distributes traffic</li><li>Servers deployed in India, USA and Japan</li><li>Ensures high availability and scalability</li></ul></div></div><div class="server">Server Location : AWS EC2 Instance

</div><footer>Cloud Project by Sushant Deshpande

</footer></div></body>
</html>EOF

systemctl restart nginx
systemctl enable nginx
