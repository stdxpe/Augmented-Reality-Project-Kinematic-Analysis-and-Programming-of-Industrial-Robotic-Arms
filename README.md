# Augmented Reality Project
### Kinematic Analysis & Programming of Industrial Robotic Arms

A simulation tool for industrial environments that allows users to test, program and control robotic arms virtually, offering an innovative approach by integrating AR with industrial robotic systems, as an alternative to conventional ‘teach pendant’ controllers

<p align="left">
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/cover_ar.jpg" height="475">
&nbsp;
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/intro.gif" height="475">
</p>

- SolidWorks & SketchUp used for editing and converting real-scale complex 3D models into optimized, lightweight formats
- Google ARCore & Vuforia used for marker detection, image recognition, surface tracking, and environment mapping
- Unity engine used for 3D rendering, image processing configurations, and physics simulations (with .NET Core and C#)
- Flutter & Dart used for the main application, and Unity project embedded into Flutter app via third-party dependencies

<p align="top">
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/grab1.gif" width="20%">
&nbsp;
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/grab2.gif" width="63.2%">
</p>

<p align="top">
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/intro.gif">
&nbsp; &nbsp;
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/grab1.gif">
</p>

<img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/grab2.gif" width="60%">

![](https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/intro.gif)
![](https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/grab1.gif)
<img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/grab2.gif" width="70%">

- Simulated the instructions and algorithms that govern the movements and actions of the 6-axis robotic arms, in various scenarios

<p align="top">
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/moves1.gif" width="35%">
&nbsp; &nbsp;
  <img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/moves2.gif" width="35%">
</p>

- Integrated real-time joint and axis manipulation to accurately position the arm in the AR interface, path creation for the end-effector within physical boundaries, 3D workspace range visualization, movement animations between specified points, and generation of simplified inverse/forward kinematic analysis outputs for future use cases


<img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/range.jpg" width="85%">
<img src="https://github.com/stdxpe/augmented_reality_project_kinematic_analysis_and_programming_of_industrial_robotic_arms/blob/main/readme_docs/range.gif" width="85%">

-

Fully functional e-commerce application for portfolio, using **Flutter**, **Riverpod**, **Firebase**, **Hive** and **Stripe**.

- Created a simulation tool for industrial environments that allows users to test, program and control robotic arms virtually, offering an innovative approach by integrating AR with industrial robotic systems, as an alternative to conventional ‘teach pendant’ controllers
- Simulated the instructions and algorithms that govern the movements and actions of the 6-axis robotic arms, in various scenarios
- Integrated real-time joint and axis manipulation to accurately position the arm in the AR interface, path creation for the end-effector within physical boundaries, 3D workspace range visualization, movement animations between specified points, and generation of simplified inverse/forward kinematic analysis outputs for future use cases
- SolidWorks & SketchUp used for editing and converting real-scale complex 3D models into optimized, lightweight formats
- Google ARCore & Vuforia used for marker detection, image recognition, surface tracking, and environment mapping
- Unity engine used for 3D rendering, image processing configurations, and physics simulations (with .NET Core and C#)
- Flutter & Dart used for the main application, and Unity project embedded into Flutter app via third-party dependencies

  

## Project Structure
```bash
├── lib                                                                                                                              
│   ├── *models
│   │   └── user_model.dart                                                                                                        
│   │   └── post_model.dart                                                                                                             
│   │   └── comment_model.dart
│   │   └── profile_model.dart                                                                                                        
│   └── *services                 
│   │   └── navigation_service.dart
│   │   └── locator_service.dart 
│   │   └── auth_service.dart
│   │   └── log_service.dart
│   │   └── database_service.dart
│   │   └── local_storage_service.dart
│   │   └── *abstract_classes 
│   │       └── i_auth_service, ...                                                                                                         
│   └── *viewmodels                                                                                                                           
│   │   └── home_viewmodel.dart
│   │   └── profile_viewmodel.dart                                                                                                      
│   │   └── blocs/cubits 
│   │   └── page_bloc.dart
│   │       └── page_bloc_state_events.dart                                                                                          
│   └── *ui                                                                                                                                    
│   │   └── *pages
│   │       └── home_page.dart
│   │       └── profile_page.dart
│   │       └── message_page.dart                                                                                                         
│   │   └── *components.                                                                                                                    
│   │       └── appbar_widget.dart
│   │       └── navigation_bar_widget.dart                                                                                                        
│   │       └── popup_widget.dart                                                                                                        
│   │       └── listview_builder_widget.dart
│   └── *utilities
│   │   └── constants.dart                                                                                                        
│   │   └── themes.dart
│   └── *assets
│   │   └── images/icons/svgs/fonts/...                                                                                                          
│   ├── app.dart                                                                                                        
│   └── main.dart                                                                                                        
├── pubspec.yaml
├── gitignore
├── dockerfile
├── dockercomposefile
!'^+%&/()=?-_"é<>£#$½§§{[[]}\||Ω| 
```
## Project Structure
```
├── lib
|   ├── posts
│   │   ├── bloc
│   │   │   └── post_bloc.dart
|   |   |   └── post_event.dart
|   |   |   └── post_state.dart
|   |   └── models
|   |   |   └── models.dart*
|   |   |   └── post.dart
│   │   └── view
│   │   |   ├── posts_page.dart
│   │   |   └── posts_list.dart
|   |   |   └── view.dart*
|   |   └── widgets
|   |   |   └── bottom_loader.dart
|   |   |   └── post_list_item.dart
|   |   |   └── widgets.dart*
│   │   ├── posts.dart*
│   ├── app.dart
│   ├── simple_bloc_observer.dart
│   └── main.dart
├── pubspec.lock
├── pubspec.yaml
```
## &nbsp;Tech Stack

<img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/javascript/javascript-original.svg" alt="JavaScript" width="50" height="50"/> &nbsp;<img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/nodejs/nodejs-plain.svg" alt="NodeJS" width="50" height="50"/> &nbsp;<img  src="https://github.com/CyrisXD/CyrisXD/raw/master/assets/ExpressJS.png" alt="ExpressJS"/> &nbsp; <img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/react/react-original.svg" alt="ReactJS" width="50" height="50" style="margin:0 auto; display:block;"/> &nbsp;<img  src="https://github.com/CyrisXD/CyrisXD/raw/master/assets/NextJS.png" alt="NextJS"/> &nbsp; <img  src="https://github.com/CyrisXD/CyrisXD/raw/master/assets/TailwindCSS.png" alt="TailwindCSS"/> &nbsp;<img src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/firebase/firebase-plain-wordmark.svg" alt="Firebase" width="50" height="50"/> &nbsp;<img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/vscode/vscode-original.svg" alt="VSCode" width="50" height="50"/> &nbsp;<img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/photoshop/photoshop-line.svg" alt="Photoshop" width="50" height="50"/> &nbsp;<img  src="https://github.com/CyrisXD/CyrisXD/raw/master/assets/Github.png" alt="Github"/> &nbsp;<img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/html5/html5-plain.svg" alt="HTML5" width="50" height="50"/> &nbsp;<img  src="https://raw.githubusercontent.com/devicons/devicon/1119b9f84c0290e0f0b38982099a2bd027a48bf1/icons/css3/css3-original.svg" alt="CSS3" width="50" height="50"/>

A little more about the code:  AKA Dependencies

```php
namespace AR_Vuforia;
    public function getDailyKnowledge(): array
        return [
            Php::class,
            Javascript::class,
            Laravel::class,
            Vuejs::class,
                  devOps: ["AWS", "Docker🐳", "Route53", "Nginx"],
                  databases: ["mongo", "MySql", "sqlite"],
                  misc: ["Firebase", "Socket.IO", "selenium", "open-cv", "php", "SuiteApp"]
            mobileApp: {
            native: ["Android Development"]
```

## Google ARCore/Vuforia AR
![Alternate Text](https://github.com/stdxpe/Augmented-Reality-Project-Kinematic-Analysis-and-Programming-of-Industrial-Robotic-Arms/blob/main/4ktest.gif)
```
namespace AR_Vuforia;
    public function getDailyKnowledge():
```
![Alternate Text](https://github.com/stdxpe/Augmented-Reality-Project-Kinematic-Analysis-and-Programming-of-Industrial-Robotic-Arms/blob/main/50fps360low.gif)

## Unity (using C#)
```javascript
const anmol = {
    pronouns: "He" | "Him",
    code: ["Javascript", "Python", "Java", "PHP"],
    askMeAbout: ["web dev", "tech", "app dev", "photography"],
    technologies: {
        backEnd: {
            js: ["Node", "Fastify", "Express"],
        },
        mobileApp: {
            native: ["Android Development"]
        },
        devOps: ["AWS", "Docker🐳", "Route53", "Nginx"],
        databases: ["mongo", "MySql", "sqlite"],
        misc: ["Firebase", "Socket.IO", "selenium", "open-cv", "php", "SuiteApp"]
    },
    architecture: ["Serverless Architecture", "Progressive web applications", "Single page applications"],
    currentFocus: "No Focus point at this time",
    funFact: "There are two ways to write error-free programs; only the third one works"
};
```

## Flutter / Dart (Unity Project embedded in Flutter Project using third-party-widget-library)
![alt-text](https://github.com/stdxpe/Augmented-Reality-Project-Kinematic-Analysis-and-Programming-of-Industrial-Robotic-Arms/blob/main/50fps480low.gif)

## Solidworks / SketchUp (used for manipulating 3D Robot models)

&nbsp;
[![Twitter Follow](https://img.shields.io/twitter/follow/misteranmol?label=Follow)](https://twitter.com/intent/follow?screen_name=misteranmol)
[![Linkedin: anmol](https://img.shields.io/badge/-anmol-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/anmol-p-singh/)](https://www.linkedin.com/in/anmol098/)
![GitHub followers](https://img.shields.io/github/followers/anmol098?label=Follow&style=social)
[![website](https://img.shields.io/badge/Website-46a2f1.svg?&style=flat-square&logo=Google-Chrome&logoColor=white&link=https://anmolsingh.me/)](https://anmolsingh.me/)
![](https://visitor-badge.glitch.me/badge?page_id=anmol098.anmol098)
![Readme](https://github.com/anmol098/anmol098/workflows/Waka%20Readme/badge.svg)
