# YOLO Cyclone Project
## Detection of Cyclonic cloud using YOLOv5 
Follow the below steps to execute the app - 
1. Create virtual environment
   ```bash
   python -m venv venv
   ```
2. Activate venv
  - For Windows
    ```
    venv/Scripts/activate
    ```
  - For Linux
    ```bash
    source venv/bin/activate
    ```
3. Open terminal and run Flask backend server _(navigate to ./Flack-backend)_
   ```bash
    pip install -r requirements.txt
    python app.py
   ```
4. Now in another terminal run Node.js frontend _(navigate to ./Front-end)_
   ```bash
   npm run dev
   ```
5. Open app in browser at _http://localhost:5173/_
   
