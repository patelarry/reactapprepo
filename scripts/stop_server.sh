#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting server..."

# Navigate to the application directory
cd /var/www/ || { echo "Failed to navigate to /var/www/"; exit 1; }

# Build the application
echo "Building application..."
sudo npm install  # Ensure dependencies are installed
sudo npm run build || { echo "Build failed"; exit 1; }

# Start the application with PM2
echo "Starting application..."
sudo pm2 start npm --name "my-react-app" -- run production || { echo "Failed to start application"; exit 1; }

echo "Application started successfully."





# #!/bin/bash
# echo starting server

# # here we just use npm to run the build
# cd /var/www/
# echo building application...
# sudo npm run build

# # start the application with pm2
# echo starting application...
# sudo pm2 start npm -- run production
