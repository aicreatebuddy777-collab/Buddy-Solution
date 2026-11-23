# Buddy Solution - Quick Start Guide

## 🚀 Get Started in 5 Minutes

### Prerequisites
- Node.js 18+ ([download](https://nodejs.org/))
- npm 9+ (included with Node.js)
- Git (optional)

### Installation

**1. Clone or download the project**
```bash
cd buddy-solution
```

**2. Backend Setup**
```bash
cd server
npm install
cp .env.example .env
# Edit .env with your settings (optional for development)
npm start
# Server running on http://localhost:5000 ✅
```

**3. Frontend Setup** (in a new terminal)
```bash
cd frontend
npm install
npm run dev
# Open http://localhost:5173 in your browser ✅
```

### Verify Everything Works

**Health Check**
```bash
curl http://localhost:5000/api/health
```

Expected response:
```json
{
  "status": "ok",
  "database": {
    "status": "connected",
    "services_count": 17,
    "users_count": 4
  },
  "timestamp": "2026-09-22T07:13:32Z"
}
```

## 🔐 Demo Accounts (Development)

| Role | Email | Password |
|------|-------|----------|
| Admin | admin@buddysolution.net | AdminSecure2026! |
| Sales | sales@buddysolution.net | DemoPass123! |
| Support | support@buddysolution.net | DemoPass123! |
| Client | client@buddysolution.net | DemoPass123! |

## 📚 Documentation

- **Detailed Setup**: See `DEPLOYMENT.md`
- **Project Structure**: See `PROJECT_STATUS.md`
- **API Reference**: See `DEPLOYMENT.md` (Endpoints section)

## 🧪 Run Tests

```bash
cd server
npm test
# 32 tests, all passing ✅
```

## 🎨 Project Features

✅ 17 Digital Services  
✅ 14 AI Business Tools  
✅ Lead Scoring & CRM  
✅ Admin Dashboard  
✅ Client Portal  
✅ SEO Infrastructure  
✅ Payment Processing  
✅ Email Automation  
✅ Support System  
✅ 100% Test Coverage  

## 📞 Need Help?

- Check `DEPLOYMENT.md` troubleshooting section
- Backend logs: Terminal where `npm start` is running
- Frontend logs: Browser console (F12)

## 🌐 Next Steps

1. ✅ Backend running locally
2. ✅ Frontend running locally
3. **Next**: Configure environment variables for production
4. **Next**: Set up email provider (SMTP)
5. **Next**: Configure payment provider (Stripe)
6. **Next**: Deploy to production server

---

**Status**: Ready to code & deploy 🚀
