
# 🚀 MVVM-C-Base-Template for Xcode

MVVM-C-Base-Template - custom Xcode project template to accelerate SwiftUI application development.

## 📖 Overview

The **MVVM-C-Base Template** provides:  
- 🎯 A clean and scalable folder structure.  
- 📂 Predefined folders.  
- 📦 Integration with useful libraries (e.g., SDWebImageSwiftUI, Swinject).  
- ⚡️ Optimized for fast project setup and maintainability.  

---

## 🛠 Installation Guide  

### Step 1: Install the Template  

1. Open a terminal and create a directory for custom Xcode templates (if it doesn’t already exist):  
   ```bash
   export DIR=~/Library/Developer/Xcode/Templates/Custom\ Templates
   mkdir -p $DIR

2. Clone this repository into the newly created directory:
   ```bash
   git clone https://github.com/irynariabchuk/MVVM-C-Base-Template "$DIR/MVVM C Base Template.xctemplate"


### Step 2: Create a New Project
1. Open **Xcode**.
2. Go to **File → New → Project**....
3. Select **iOS** from the tabs at the top.
4. Scroll down and select the **MVVM-C-Base-Template**, then click **Next**.
5. Enter **your app name**, organization identifier, and other details. Click **Next**.
7. Xcode will generate a new project based on the SwiftUITemplate. 🎉

### Step 3: ⚡️ Adding Dependencies
Since Xcode templates don’t directly support adding Swift package dependencies, follow these steps to manually add packages:

1. Go to **File → Add Packages**….
2. Added SPM:
- `https://github.com/SDWebImage/SDWebImageSwiftUI.git`
- `https://github.com/Swinject/Swinject.git`
  
3. Select the Up to Next Major Version rule and ensure the version is set.
4. Click **Add Package**, and Xcode will automatically link the package to your project.

### Step 4: 🚀 Running Your Project
1. Open the Assets.xcassets folder and customize your app's icon and accent colors.
2. Build and run your app using **Product → Run** or **⌘+R**.
3. Enjoy your pre-configured SwiftUI app and start adding your custom logic!

