#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/server

# Stop all running pm2 processes
pm2 delete all

# Start the application using pm2 with the npm start script
pm2 start npm -- start







# #!/bin/bash


# # here we just use npm to run the build
# cd /home/ubuntu/server


# # start the application with pm2
# pm2 delete all
# pm2 start "npm start"
