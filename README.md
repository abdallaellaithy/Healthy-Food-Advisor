# Healthy-Food-Advisor

**Healthy-Food-Advisor** is a Telegram bot designed to help users make informed decisions about their food choices based on their health conditions. The bot leverages state-of-the-art image processing and natural language processing models to analyze food items and provide advice on whether the food is good to eat, should be consumed in moderation, or should be avoided.

## Features

- **User Interaction via Telegram**: Users can interact with the bot using simple commands and buttons. The bot can handle various user inputs, including text commands and images.
  
- **Health-Specific Advice**: The bot offers personalized advice based on the user's selected health condition, such as diabetes, heart disease, or blood pressure issues.

- **Image Analysis**: Users can send photos of food items, and the bot will analyze the images to determine the suitability of the food based on the user's health condition.

## Installation

To run this project locally, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/healthy-food-advisor.git
   cd healthy-food-advisor
   ```
2. **Install required libraries**:
   Make sure you have Python installed. Then, install the necessary libraries using pip:
   ```bash
    pip install python-telegram-bot==20.0.0
    pip install nest_asyncio
    pip install timm
    pip install bitsandbytes==0.43.1
    pip install trl peft==0.10.0 accelerate==0.28.0
    pip install transformers==4.39.3
    pip install flash-attn --no-build-isolation
   ```
3. Set up your Telegram Bot:
  * Create a bot using the BotFather on Telegram and obtain your bot token.
  * Replace the placeholder TOKEN = 'The_bot_token' in the code with your actual bot token.
