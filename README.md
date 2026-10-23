[README.md](https://github.com/user-attachments/files/33866815/README.md)
# ⌚ TickTock Hub – Online Watch E-Commerce Platform

TickTock Hub is a web-based e-commerce platform for watch enthusiasts and shoppers. Customers can explore a wide range of watches, from luxury timepieces to modern smartwatches, add them to a cart, and place orders online. An admin panel lets the store owner manage users, brands, products, orders and feedback.

---

## 📌 Project Profile

| Title | Detail |
|---|---|
| Project Title | TickTock Hub |
| Project Type | Web Application |
| Front-End Tool | ASP.NET (Web Forms, C#), HTML, CSS, JavaScript |
| Back-End Tool | Microsoft SQL Server 2014 |
| Development Tool | Visual Studio 2015 |
| Duration | November to February |
| Team Size | 2 |
| Stream | T.Y.B.C.A. (Sem-6) |
| Guided By | Prof. Priya Pilojpara |


## 👩‍💻 Developed By

- **Gadhiya Bhakti R.**


---

## ✨ Features

### 👤 User Side
- Register and Login
- Home page with featured brands and offers
- Browse the Shop and Brands pages
- Product detail view
- Add to Cart, update quantity, remove items
- Checkout with billing details and payment method selection
- Invoice / Bill generation
- Contact Us and Feedback
- Logout (session is destroyed)

### 🛠️ Admin Side
- Dashboard with summary cards (active users, brands, products, cart summary, contacts, feedback)
- Manage Users
- Manage Brands (add / edit)
- Manage Products (add / edit / delete)
- View and manage Orders
- View Cart Summary, Contact Insights and User Feedback
- Logout

---

## 🧰 Tech Stack

- **Front End:** ASP.NET Web Forms, C#, HTML, CSS, JavaScript
- **Back End:** Microsoft SQL Server 2014
- **IDE:** Visual Studio 2015
- **OS:** Windows 10

---

## 🗄️ Database Tables

| Table | Purpose |
|---|---|
| `User_register` | Stores user and admin accounts (`isAdmin` flag) |
| `All_Products` | Product details (name, brand, gender, price, detail, image) |
| `Brands` | Brand name and image |
| `Cart` | Items added to cart by users |
| `Bill` | Order and billing details (subtotal, shipping, total, payment method, invoice no.) |
| `Contact` | Contact / inquiry messages |
| `Feedback` | User feedback and comments |

The database script is available in the `Database` folder (`database.sql`).

---

## 📂 Project Structure

```
TickTock-Hub-Online-Watch-E-Commerce-Platform/
│
├── Database/            # SQL Server database script
├── project/             # ASP.NET web application
│   ├── Admin/           # Admin panel pages
│   ├── *.aspx           # User pages (Home, About, Brands, Cart, Checkout, Contact, ...)
│   ├── *.aspx.cs        # Code-behind files (C#)
│   └── database.sql     # Database script
└── README.md
```

---

## 🚀 How to Run the Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/<your-username>/TickTock-Hub-Online-Watch-E-Commerce-Platform.git
   ```
2. **Set up the database**
   - Open SQL Server Management Studio.
   - Create a new database and run the `database.sql` script to create the tables.
3. **Open the project**
   - Open the project folder in Visual Studio (2015 or later).
4. **Update the connection string**
   - Edit the connection string in `Web.config` (or in the code-behind files, if used there) to point to your SQL Server instance and database.
5. **Run**
   - Press `F5` / click **Start** to launch the site in your browser.

---

## 🖥️ System Requirements

**Hardware**
- Hard Disk: 500 GB
- Processor: 2.33 GHz
- RAM: 2 GB
- 64-bit operating system

**Software**
- Microsoft Windows 10
- Visual Studio 2015 (ASP.NET)
- SQL Server 2014

---

## 🖼️ Screenshots

> Add your screenshots in a `screenshots/` folder and link them here.

| Page | Preview |
|---|---|
| Home Page | `![Home](screenshots/home.png)` |
| Login / Register | `![Login](screenshots/login.png)` |
| Shop | `![Shop](screenshots/shop.png)` |
| Cart | `![Cart](screenshots/cart.png)` |
| Checkout | `![Checkout](screenshots/checkout.png)` |
| Invoice | `![Invoice](screenshots/invoice.png)` |
| Admin Dashboard | `![Admin](screenshots/admin.png)` |

---

## ⚠️ Limitations

- No fraud prevention mechanisms, which may lead to misuse or chargebacks.
- Not fully optimized for mobile devices.
- Basic search with no advanced filtering.

## 🔮 Future Enhancements

- AI-based product recommendations from browsing and purchase history.
- Rewards program with discounts, points or gifts for repeat customers.
- More payment gateways (Apple Pay, Google Pay, Buy Now Pay Later).
- A dedicated mobile app.

---

## 📚 References

- [TutorialsPoint – ASP.NET](https://www.tutorialspoint.com/asp.net/)
- [Guru99 – ASP.NET Tutorial](https://www.guru99.com/asp-net-tutorial.html)
- [JavaTpoint – ASP.NET Tutorial](https://www.javatpoint.com/asp-net-tutorial)
- [Microsoft Docs – ASP.NET Tutorials](https://docs.microsoft.com/en-us/aspnet/tutorials)

---

## 📄 Note

This project was developed as an academic project for the T.Y.B.C.A. (Sem-6) curriculum.
