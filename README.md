# 🍽️ Smart Surplus Food Management System

A comprehensive web application to reduce food waste by connecting surplus food donors with recipients. Built with Node.js, Express, MongoDB, and vanilla JavaScript.

## ✨ Features

- **Food Donation System**: Donors can list surplus food with images, quantities, and expiration dates
- **Real-time Notifications**: Socket.io powered notifications for new food listings  
- **User Management**: Role-based access (Admin, Donor, Recipient)
- **Image Upload**: Multer-based file handling for food images
- **Auto-cleanup**: Automatic removal of expired food items
- **Analytics**: Track food saved, people served, and environmental impact
- **Responsive Design**: Mobile-friendly interface
- **Authentication**: JWT-based secure authentication system

## 🚀 Quick Start

### Prerequisites

- **Node.js** (v16 or higher)
- **MongoDB** (v4.4 or higher)
- **Modern web browser**

### Installation & Setup

1. **Clone/Navigate to the project**
   ```bash
   cd smart-surplus-food-suproyo
   ```

2. **Start MongoDB**
   ```bash
   mongod
   # OR if running as service
   net start MongoDB
   ```

3. **Run the startup script (Windows)**
   ```powershell
   .\start.ps1
   ```
   
   **OR Manual Setup:**
   
   ```bash
   # Install backend dependencies
   cd backend
   npm install
   
   # Seed admin user
   node seedAdmin.js
   
   # Start the server
   npm start
   ```

4. **Open the application**
   - Backend API: http://localhost:5000
   - Frontend: Open `frontend/index.html` in your browser

## 👥 Test User Accounts

| Role      | Email                    | Password  |
|-----------|--------------------------|-----------|
| Admin     | admin@smartsurplus.com   | admin123  |
| Donor     | donor@test.com           | donor123  |
| Recipient | user@test.com            | user123   |

## 🏗️ Project Structure

```
smart-surplus-food-suproyo/
├── backend/
│   ├── config/
│   │   └── db.js                    # MongoDB connection
│   ├── controllers/
│   │   ├── authController.js        # Authentication logic
│   │   ├── foodController.js        # Food item management
│   │   └── analyticsController.js   # Analytics & stats
│   ├── middlewares/
│   │   ├── authMiddleware.js        # JWT verification
│   │   └── roleMiddleware.js        # Role-based access
│   ├── models/
│   │   ├── User.js                  # User schema
│   │   ├── FoodItem.js             # Food item schema
│   │   └── EventLog.js             # Analytics events
│   ├── routes/
│   │   ├── authRoutes.js           # Authentication routes
│   │   ├── foodRoutes.js           # Food management routes
│   │   └── analyticsRoutes.js      # Analytics routes
│   ├── uploads/                    # Uploaded food images
│   ├── utils/
│   │   ├── token.js                # JWT utilities
│   │   └── sendNotification.js     # Socket.io notifications
│   ├── .env                        # Environment variables
│   ├── server.js                   # Main server file
│   └── seedAdmin.js               # Database seeding script
├── frontend/
│   ├── css/
│   │   └── styles.css              # Main stylesheet
│   ├── js/
│   │   ├── auth.js                 # Authentication functions
│   │   ├── food.js                 # Food management
│   │   ├── socket.js               # Real-time notifications
│   │   └── index.js                # Homepage functionality
│   ├── index.html                  # Main homepage
│   ├── login.html                  # Login page
│   ├── admin-login.html            # Admin login
│   ├── add-food.html               # Food donation form
│   ├── analytics.html              # Impact analytics
│   └── events.html                 # Event management
├── start.ps1                       # Windows startup script
└── README.md                       # This file
```

## 🔧 Configuration

### Environment Variables (.env)

```env
MONGO_URI=mongodb://127.0.0.1:27017/smart_surplus_food
PORT=5000
JWT_SECRET=SmartSurplusFood2024_SecureJWTKey_RandomString123!@#
```

### MongoDB Collections

- **users**: User accounts with roles (admin, donor, recipient)
- **fooditems**: Food listings with images and metadata
- **eventlogs**: Analytics and activity tracking

## 📱 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - User login  
- `GET /api/auth/verify` - Verify JWT token

### Food Management
- `GET /api/food` - Get all available food items
- `POST /api/food` - Add new food item (donors/admins only)
- File uploads supported via multipart/form-data

### Analytics
- `GET /api/analytics/stats` - Get impact statistics

## 🎯 User Workflows

### For Recipients
1. Visit homepage to browse available food
2. Login with recipient account
3. Reserve food items
4. View impact analytics

### For Donors
1. Login with donor account
2. Navigate to "Add Food" page
3. Fill out food details and upload image
4. Submit donation
5. Real-time notifications sent to users

### For Admins
1. Login with admin account
2. Manage all food listings
3. View comprehensive analytics
4. Monitor system activity

## 🛠️ Development

### Backend Development
```bash
cd backend
npm run dev  # Uses nodemon for auto-restart
```

### File Structure Guidelines
- Controllers handle business logic
- Middlewares handle authentication/authorization
- Models define database schemas
- Routes define API endpoints
- Utils contain helper functions

### Adding New Features
1. Add route in appropriate routes file
2. Create controller function
3. Update frontend JavaScript
4. Test with all user roles

## 🚨 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**
   - Ensure MongoDB is running: `mongod`
   - Check connection string in .env file

2. **Port Already in Use**
   - Change PORT in .env file
   - Kill existing processes: `netstat -ano | findstr :5000`

3. **Image Upload Issues**
   - Check uploads/ directory permissions
   - Verify multer configuration
   - Check file size limits

4. **Frontend Not Loading Data**
   - Verify API URLs in JavaScript files
   - Check browser console for CORS errors
   - Ensure backend server is running

5. **Authentication Problems**
   - Clear browser localStorage
   - Check JWT_SECRET in .env
   - Verify token expiration (1 hour default)

## 📈 Analytics & Monitoring

The system tracks:
- Total food saved (kg)
- Number of people served  
- Carbon footprint reduced (kg CO₂)
- Real-time activity logs

## 🔐 Security Features

- JWT authentication with 1-hour expiration
- Password hashing with bcryptjs
- Role-based access control
- Input validation with Joi
- Rate limiting on API endpoints
- CORS protection
- File upload restrictions

## 🌍 Environmental Impact

This system helps reduce food waste by:
- Connecting surplus food with those in need
- Preventing edible food from reaching landfills
- Reducing methane emissions from food waste
- Promoting sustainable consumption practices

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/new-feature`)
3. Commit changes (`git commit -m 'Add new feature'`)
4. Push to branch (`git push origin feature/new-feature`)
5. Open Pull Request

## 📞 Support

For issues or questions:
- Email: sankhadeep.satra.cse28@heritageit.edu.in
- Phone: +91 8670203075

---

**Made with ❤️ for reducing food waste and building sustainable communities**

