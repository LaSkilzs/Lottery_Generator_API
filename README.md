# Lottery Generator API

## Purpose

## How to Use
####1. run command - bundle install
####2. run server -- rails s


## Endpoints
####1. Generate Lottery       (POST)  params(name,date)  --  "http://localhost:3000/api/v1/lotteries"
####2. Generate One Pick      (POST)  params(lottery_id) --  "http://localhost:3000/api/v1/fulldrawing"
####3. Generate Full Drawing  (POST)  params(name, date) --  "http://localhost:3000/api/v1/lotteries"

####1. List of all lotteries  (Get)                      --   "http://localhost:3000/api/v1/lotteries"
