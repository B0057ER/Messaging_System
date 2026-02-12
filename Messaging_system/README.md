# Shared Messaging System

A simple web-based messaging system where all messages are shared across any device that accesses the website.

## Setup

### 1. Install Node.js dependencies
```bash
npm install
```

### 2. Start the server
```bash
npm start
```

The server will run on `http://localhost:3000`

### 3. Access the messaging app
Open your browser and go to:
```
http://localhost:3000
```

### 4. Access from other devices
On a different device on the same network, open your browser and go to:
```
http://<YOUR_COMPUTER_IP>:3000
```

To find your computer's IP address:
- **Windows**: Open Command Prompt and type `ipconfig` (look for IPv4 address)
- **Mac/Linux**: Open Terminal and type `ifconfig` (look for inet address)

## Features
- ✅ Messages appear instantly on all connected devices
- ✅ Messages persist across server restarts (saved to `messages.json`)
- ✅ Real-time sync (updates every 2 seconds)
- ✅ Send messages with Enter key
- ✅ Clear all messages with the Clear button
- ✅ Simple and clean UI

## API Endpoints
- `GET /api/messages` - Get all messages
- `POST /api/messages` - Send a new message
- `DELETE /api/messages` - Delete all messages

## Files
- `server.js` - Express backend server
- `index.html` - Frontend messaging app
- `package.json` - Node.js dependencies
- `messages.json` - Persisted messages (auto-created)
