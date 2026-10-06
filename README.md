# Touchpad Palm Vision — 鏡頭手部操作觸控板即時接觸與手掌分析儀

> 透過攝影機即時拍攝手部操作觸控板・AI 3D 骨架手勢追蹤・手指接觸/懸停/抬起判定・手掌誤觸壓板防禦系統

[![GitHub Pages](https://img.shields.io/badge/Online_Demo-GitHub_Pages-brightgreen?logo=github)](https://bedroom0204.github.io/touchpad-palm-visualizer/)
![MediaPipe Hands](https://img.shields.io/badge/AI-MediaPipe_Hands_3D-cyan.svg)
![Computer Vision](https://img.shields.io/badge/Vision-Realtime_Webcam-lime.svg)
![PWA Ready](https://img.shields.io/badge/PWA-Ready-emerald.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)

🌐 **官方線上即開即用 Demo**：👉 **[https://bedroom0204.github.io/touchpad-palm-visualizer/](https://bedroom0204.github.io/touchpad-palm-visualizer/)**  
*(打開網頁並授權攝影機，將鏡頭對準您的手與桌上觸控板，即可展開實時 AI 接觸與手掌分析；無鏡頭時亦支援 AI 模擬演示模式)*

---

## 🌟 核心特色功能 (Core Features)

### 1. 📷 鏡頭即時拍攝手部與多鏡頭切換 (Real-time Vision & Camera Switching)
- **多鏡頭自由切換 (Camera Switching)**：支援快速切換多個視訊輸入裝置（筆電內建鏡頭、USB 外接俯拍相機、手機前置/後置鏡頭）。
- **一鍵輪播鏡頭 & 下拉選單**：頂部控制列與畫面 HUD 均有一鍵「切換鏡頭」按鈕與設備選單，隨按即切。
- **熱插拔動態偵測 (Hot-plug Detection)**：監聽裝置變更事件，插入 USB 鏡頭時自動更新設備列表。
- **鏡像水平翻轉切換**：提供一鍵切換鏡像翻轉（前置鏡頭鏡像 / 俯拍鏡頭正常視角）。
- **MediaPipe Hands 3D 關節點**：即時識別手部 21 處立體關節點、掌心中心點、左右手標籤。
- **高訊框率賽博龐克骨架 HUD**：即時繪製科技藍骨骼線、指尖狀態光環、掌根接觸節點。

### 2. 🎯 實體觸控板感應標靶區 (Trackpad Target Calibration)
- **視野感應框對準**：畫面上提供青色「觸控板感應標靶框」，可微調位置、寬高，精準覆蓋攝影機畫面中的實體筆電觸控板或外接觸控板。
- **一鍵校準接觸基準面**：點擊「一鍵校準接觸基準」，即可將當前手勢貼板高度鎖定為接觸基準面 ($Z_0$)，實現毫米級精準接觸判定。

### 3. 👆 五指獨立狀態分析 (Finger-by-Finger Contact Analysis)
- **🟢 接觸 (TOUCH)**：指尖進入觸控板範圍，且垂直深度 $\Delta Z$ 達到接觸面基準（綠色高亮發光波紋）。
- **🟡 懸停 (HOVER)**：指尖在觸控板正上方浮空預備（黃色警戒光環）。
- **⚪ 抬起/離板 (LIFT / OUT)**：手指向上收起或離開觸控板範圍。
- 即時顯示食指、中指、大拇指、無名指、小指的獨立深度與狀態。

### 4. 🖐️ 手掌基底貼合與誤觸壓板判定 (Palm Rest / Rejection Warning)
- **手掌大魚際/小魚際/掌根沉降監控**：即時計算手腕 (Wrist #0) 與掌心深度。
- **🔴 手掌貼合警示 (PALM REST)**：當手掌肉墊壓在觸控板範圍內時，即時觸發紅色警報遮罩，計算手掌誤觸置信度 (%)，精準攔截打字誤觸。

### 5. ✌️ 即時手勢操作模式辨識 (Gesture Recognition)
- 👆 **單指操作 (1-Finger Track/Tap)**：食指單指接觸滑動或點擊。
- ✌️ **雙指操作 (2-Finger Scroll/Pinch)**：雙指同時接觸，辨識捲動平移或捏合縮放。
- 🖐️ **三指/四指多工手勢 (3 & 4-Finger Swipe)**：多指同時接觸切換視窗。
- 🛑 **手掌誤觸防禦 (Palm Touch Active)**：手掌貼合壓板警告。

### 6. 🤖 AI 模擬演示模式 (AI Simulation Mode)
- 若暫時無法開啟鏡頭或於無攝影機設備測試，點擊「AI 模擬演示」，系統將自動生成擬真 3D 手勢在虛擬觸控板上進行點擊、滑動與手掌壓覆示範。

---

## 📱 PWA 手機/平板支援

1. **iOS (Safari)**：打開網址 ➔ 分享按鈕 ➔ 選擇「加入主畫面」。
2. **Android (Chrome)**：打開網址 ➔ 選單「⋮」 ➔ 選擇「安裝應用程式」或「加到主螢幕」。

---

## 🚀 本機運行

雙擊專案目錄內的 **`啟動本機預覽.bat`** 即可在瀏覽器開啟本機伺服器 (`http://localhost:8080`)。

若有代碼更新，雙擊 **`一鍵推送GitHub.bat`** 即可同步推送到 GitHub，GitHub Pages 線上網頁將全自動連動更新！

---

## 📄 專案檔案結構

```
touchpad-palm-visualizer/
├── index.html            # 核心單頁應用 (鏡頭視訊、MediaPipe Hands、接觸判定演算法)
├── manifest.json         # PWA 應用設定檔
├── icon-512.svg          # 向量圖標
├── 啟動本機預覽.bat      # 雙擊本機預覽腳本
├── 一鍵推送GitHub.bat   # 雙擊同步推送至 GitHub
└── README.md             # 專案說明文件
```
