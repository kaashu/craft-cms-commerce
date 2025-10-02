# Craft CMS + Commerce Demo Store

A demo e-commerce application built with **Craft CMS 5** and **Craft Commerce 5**.  
This project has a headless GraphQL API as well as a frontend with Twig templates.

---

##  Features

- Product catalog grid  
- Product detail page (image, description, price, variants, add to cart)    
- GraphQL API for headless storefronts  

---

##  Tech Stack

- [Craft CMS 5 Pro](https://craftcms.com/)  
- [Craft Commerce 5](https://craftcms.com/commerce)  
- GraphQL API (Storefront API)  
- Twig Templates (frontend demo)  
- Docker / Docker Compose (PHP 8.2, MySQL 8, Nginx)  
- TailwindCSS (styling)  

---

##  Screenshots

Homepage/Products
<img width="1310" height="839" alt="image" src="https://github.com/user-attachments/assets/fef732b9-d68a-46ef-a224-2884917e2ff4" />

Product Detail Page
<img width="1291" height="711" alt="image" src="https://github.com/user-attachments/assets/8b3ac821-9be9-4835-bd6c-8cbafcb0e525" />

GraphQL API response showing the products
<img width="2475" height="1138" alt="image" src="https://github.com/user-attachments/assets/8aea34a9-b7e9-4827-a144-98bbee7426f5" />


---

## Getting Started (Setup/Install Instructions)

### 1. Clone the repo
git clone https://github.com/kaashu/craft-cms-commerce.git  
cd craft-cms-commerce

### 2. Copy environment variables:

cp .env.example .env

### 3. Build and start Docker:

docker compose up -d --build

### 4. Install Composer and Craft:

docker compose exec app composer install  
docker compose exec app php craft install

### 5. Setup:

Database Username: craft

Email: admin@demo.com

Database Password: craftpass

Database name: craft

Site URL (local):

http://localhost:8080

### 6. Log into the Control Panel:
http://localhost:8080/admin

Username: admin

Password: (whatever you set during install)

