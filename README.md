# Healthy-Food-Advisor

**Healthy-Food-Advisor** is a Telegram bot designed to help users make informed decisions about their food choices based on their health conditions. The bot leverages state-of-the-art image processing and natural language processing models to analyze food items and provide advice on whether the food is good to eat, should be consumed in moderation, or should be avoided.

## How to Use the Program

Follow the steps in the GIF below to learn how to use the program:

<p align="center">
  <img src="https://github.com/abdallaellaithy/Healthy-Food-Advisor/blob/main/assets/Bot_Usage_Instructions.gif" alt="Usage Instructions">
</p>

## Features

- **User Interaction via Telegram**: Users can interact with the bot using simple commands and buttons. The bot can handle various user inputs, including text commands and images.
  
- **Health-Specific Advice**: The bot offers personalized advice based on the user's selected health condition, such as diabetes, heart disease, or blood pressure issues.

- **Image Analysis**: Users can send photos of food items, and the bot will analyze the images to determine the suitability of the food based on the user's health condition.

## Installation

To run this project locally, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/abdallaellaithy/healthy-food-advisor.git
   cd healthy-food-advisor
   ```
2. **Create a `temp` folder**:
   ```bash
   mkdir temp
   ```
4. **Install required libraries**:
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
5. **Set up your Telegram Bot**:
  * Create a bot using the BotFather on Telegram and obtain your bot token.
  * Replace the placeholder TOKEN = 'The_bot_token' in the code with your actual bot token.
5. **Run the bot**:
    Ensure you are in an asynchronous environment to run the bot:
   ```bash
   python bot_script.py
   ```
## Usage

### Start the Bot
Users can start interacting with the bot by typing `/start`. The bot will present options for users to select their health condition.

### Send an Image
Users can send a photo of the food item they want advice on. The bot will process the image and provide feedback on whether the food is suitable for their condition.

### Receive Advice
Based on the image and the selected health condition, the bot will give advice on whether to eat the food, eat it in moderation, or avoid it.

## Technologies Used

- **Python**: Programming language used for development.
- **Telegram Bot API**: Used for creating the bot and handling user interactions.
- **Transformers and BitsAndBytes**: Used for model configuration and processing.
- **PIL (Python Imaging Library)**: For image handling and processing.
- **AutoImageProcessor and DetrForObjectDetection**: For analyzing food images.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue to discuss improvements or features.
