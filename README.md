# Touchpad Palm Visualizer — 即時觸控板手指與手掌分析儀

> 現代觸控板幾何接觸分析・手掌防誤觸判定引擎・多點手勢識別・高訊框率熱力圖可視化

[![GitHub Pages](https://img.shields.io/badge/Online_Demo-GitHub_Pages-brightgreen?logo=github)](https://bedroom0204.github.io/touchpad-palm-visualizer/)
![Pointer Events Level 3](https://img.shields.io/badge/API-Pointer_Events_L3-cyan.svg)
![PWA Ready](https://img.shields.io/badge/PWA-Ready-lime.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-emerald.svg)

🌐 **官方線上即開即用 Demo**：👉 **[https://bedroom0204.github.io/touchpad-palm-visualizer/](https://bedroom0204.github.io/touchpad-palm-visualizer/)**  
*(支援 MacBook Trackpad、Windows Precision 觸控板、iPad/iPhone、觸控筆電螢幕，桌機使用者亦支援滑鼠手勢與擬真情境注入)*

---

## 🌟 核心特色功能 (Core Features)

### 1. 👆 即時手指接觸幾何分析 (Fingertip Geometric Sensing)
- **接觸面幾何特徵**：即時計算接觸長寬 ($w, h$)、主軸/次軸橢圓幾何形變、旋轉角與接觸面積 ($px^2$)。
- **壓力與動態波紋**：支援感測接觸力道 (Force / Pressure 0.0 ~ 1.0) 與傾斜角度 ($tiltX, tiltY$)，並以立體動態波紋呈現。
- **動態運動光軌**：紀錄運動歷史路徑，依速度與壓力自動調節霓虹光暈拖尾。

### 2. 🖐️ 手掌防誤觸判定引擎 (Palm Rejection Shield Engine)
- **大面積接觸面判定 (Area Threshold)**：當接觸幾何面積超過設定門檻（預設 $> 160\text{ px}^2$），立即識別為手掌大魚際肌或掌心壓覆。
- **掌緣離心長寬比 (Aspect Ratio / Eccentricity)**：側靠觸控板邊界之長條形肉掌（$Aspect > 2.2$）精準過濾。
- **邊界死區保護 (Edge Proximity)**：偵測手腕常駐靜止靠放，提供即時手掌誤觸置信度（Palm Confidence 0% ~ 100%）與警示遮罩。

### 3. ✌️ 多點手勢即時識別 (Multi-Touch Gesture Recognition)
- **單指 (1-Finger)**：游標平移、輕點點擊 (Tap / Drag)。
- **雙指 (2-Finger)**：雙指平行捲動 (Scroll)、雙指捏合/開合縮放 (Pinch-in / Pinch-out)、捏合跨距即時計算。
- **三指/四指 (3 & 4-Finger)**：多指切換手勢 (App Switch Swipe)、手掌防禦鎖定。
- **Precision Trackpad 支援**：支援高精度 `wheel` 向量與 `ctrlKey` 縮放手勢捕捉。

### 4. 🧪 虛擬情境模擬實驗 (Virtual Touchpad Simulator)
- 即使在沒有多點觸控板的桌機環境，亦可一鍵注入常見真實情境：
  - 單指滑動 (Single Finger Drag)
  - 雙指平移捲動 (Two-Finger Scroll)
  - 雙指捏合縮放 (Pinch to Zoom)
  - 三指滑動切換 (3-Finger Swipe)
  - 大面積手掌拍擊置放 (Palm Strike & Rest)
  - 邊打字邊滑動（手掌側靠邊緣 + 食指拖曳複合情境）

### 5. 🔥 表面累計熱力圖與分析快照 (Heatmap & Snapshot Export)
- **熱力圖模式 (Heatmap Mode)**：記錄整段時間在觸控板上的摩擦熱區，視覺化高頻接觸分布。
- **一鍵快照匯出**：一鍵將當前觸控板分析畫布保存為高清 PNG 圖片。

---

## 📱 PWA 手機/平板安裝支援

1. **iOS (Safari)**：打開網址 ➔ 分享按鈕 ➔ 選擇「加入主畫面」。
2. **Android (Chrome)**：打開網址 ➔ 選單「⋮」 ➔ 選擇「安裝應用程式」或「加到主螢幕」。

---

## 🚀 本機運行

雙擊專案目錄內的 **`啟動本機預覽.bat`** 即可在瀏覽器開啟本機伺服器 (`http://localhost:8080`)。

---

## 📄 專案檔案結構

```
touchpad-palm-visualizer/
├── index.html            # 核心單頁應用 (HTML5 Canvas、Pointer API、手掌演算法)
├── manifest.json         # PWA 應用設定檔
├── icon-512.svg          # 高畫質賽博龐克觸控板圖標
├── 啟動本機預覽.bat      # 雙擊本機預覽腳本
├── 一鍵推送GitHub.bat   # 雙擊同步推送至 GitHub
└── README.md             # 專案手冊與技術說明
```
