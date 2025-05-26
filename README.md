# Grid Trading Bot

This project consists of two main components:

1. **BackendPython**: A Python-based backend that implements the grid trading logic and provides a REST API for the frontend.
2. **algo-grid-pilot**: A TypeScript/React frontend that provides a user interface for configuring and monitoring grid trading bots.

## Backend Setup

### Prerequisites

- Python 3.8 or higher
- pip (Python package manager)

### Installation

1. Navigate to the BackendPython directory:
   ```bash
   cd BackendPython
   ```

2. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Configure the API keys:
   - Open `src/config/.env` and add your Binance API keys:
     ```
     BINANCE_API_KEY=your_api_key_here
     BINANCE_API_SECRET=your_api_secret_here
     ```

### Running the Backend

1. Start the Flask API server:
   ```bash
   cd src
   python main.py
   ```

2. The API will be available at `http://localhost:5000/api`

## Frontend Setup

### Prerequisites

- Node.js 14 or higher
- npm (Node.js package manager)

### Installation

1. Navigate to the algo-grid-pilot directory:
   ```bash
   cd algo-grid-pilot
   ```

2. Install the required dependencies:
   ```bash
   npm install
   ```

### Running the Frontend

1. Start the development server:
   ```bash
   npm start
   ```

2. The frontend will be available at `http://localhost:3000`

## Using the Grid Trading Bot

1. Open the frontend in your browser at `http://localhost:3000`
2. Configure a new grid trading bot:
   - Select a trading pair (e.g., BTCUSDT)
   - Set the upper and lower price bounds
   - Set the number of grid levels
   - Set the quantity per order
3. Choose the trading mode:
   - **Shadow Mode**: Simulates trading without placing real orders
   - **Production Mode**: Places real orders on the exchange (requires API keys)
4. Start the grid trading bot
5. Monitor the bot's performance in the dashboard

## Features

- Grid trading with configurable parameters
- Shadow mode for testing without real orders
- Dynamic grid adjustment based on market conditions
- Position and order tracking
- Trade history and performance metrics

## Architecture

### Backend

- Flask REST API
- Grid trading logic implementation
- Binance API integration
- Risk management

### Frontend

- React.js UI
- TypeScript for type safety
- Real-time data updates
- Interactive grid visualization

## API Endpoints

- `GET /api/status`: Get the status of the API and active bots
- `GET /api/market_data`: Get market data for available trading pairs
- `POST /api/grid/config`: Configure a grid trading bot
- `POST /api/grid/start`: Start a grid trading bot
- `POST /api/grid/stop`: Stop a grid trading bot
- `GET /api/grid/status/<symbol>`: Get the status of a specific grid trading bot

## License

This project is licensed under the MIT License - see the LICENSE file for details.