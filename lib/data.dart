import 'package:personal_website/widgets/content.dart';

final List<Content> projects = [
  const Content(
    title: "Lost @ Pitt",
    skills: ["Flutter", "Dart", "Firebase", "Google Cloud"],
    dates: "May 2023 - present",
    description:
        """A crowdsourced lost and found application, allowing university students to locate their lost belongings.\n\nBuilt using the **Flutter SDK, Dart**, **Firebase Auth** and **Firestore**.\n\n**SteelHacks 2023** 2nd place\n**Pitt Big Idea Competition** finalist""",
    githubLink: "https://github.com/Steelhacks-2023/Lost-At-Pitt",
    imagePaths: ["assets/images/logo-dark.png", "assets/images/lostatpitt.png"],
  ),
  const Content(
      title: "Cinect",
      subtitle: "CS-1660 Final Project",
      dates: "Feb - Apr 2024",
      description:
          """Delivers movie recommendations using a **KNN clustering algorithm**\n\nDriven using data from a group of users on Letterboxd, a film review site\n\nUtilized **GitHub Actions** to automatically deploy to **GCP services**""",
      imagePaths: ["assets/images/logo.png", "assets/images/cinect.png"],
      skills: ["ReactJS", "Flask", "Firebase", "Docker", "GCP"],
      githubLink: "https://github.com/KavinSankar123/Cinect"),
  const Content(
      imagePaths: [
        "assets/images/astralnaut1.png",
        "assets/images/astralnaut2.png"
      ],
      title: "Astralnaut",
      skills: ["Godot", "GDScript", "OOP"],
      dates: "Jan - Feb 2023",
      description:
          """An arcade style, 2-d space shooter with pixel art graphics and custom music.\n\nBuilt with the **Godot** game engine and **GDScript**.""",
      githubLink: "https://github.com/tbeidlershenk/astralnaut")
];

final List<Content> work = [
  const Content(
      title: "WebstaurantStore",
      subtitle: "QA Automation Intern",
      dates: "May 2024 - present",
      description:
          """Wrote **automation scripts** to test storefront and admin pages, using **Groovy and Selenium**\n\nWrote **SQL queries** to fetch appropriate test data from database tables\n\nWrote **unit tests** for shared classes used in automation scripts\n\nMonitored nightly runs of automated tests, communicating with developers when bugs arose""",
      imagePaths: ["assets/images/webstaurantstore.png"],
      skills: ["Selenium", "Groovy", "Java", "SQL", "Azure DevOps"]),
  const Content(
      title: "Innovative Systems",
      subtitle: "Software Engineering Intern",
      dates: "Jan - May 2024",
      description:
          """Built a **multi-threaded ETL tool** for transformation & validation of records, supporting multiple file formats.\n\nDeveloped an API to extract core functionality into a shared library, with **unit & integration tests.**\n\nBuilt a **plugin system** for custom processing operations to be dynamically loaded & executed.""",
      imagePaths: ["assets/images/innovativesystems.webp"],
      skills: ["C#", ".Net", "Jira"]),
  const Content(
      title: "University of Pittsburgh",
      subtitle: "Teaching Assistant",
      dates: "Aug 2022 - Dec 2023",
      description:
          """Lead recitations for **30+ students** for CS 11, 401, 449, teaching intro programming and introduction to systems software.\n\nCoordinated lecture reviews, held office hours, helped students work through assignments.""",
      imagePaths: ["assets/images/pitt.jpg"],
      skills: ["Java", "Python", "C", "VB"]),
  const Content(
      title: "Dynamics Inc.",
      subtitle: "Software Engineering Intern",
      dates: "May - Aug 2023",
      description:
          """Planned, developed and tested the **frontend & backend** for an internal database application. \nImplemented **CRUD operations** on the database & server side **sorting, filtering, and pagination**.""",
      imagePaths: ["assets/images/dynamicsinc.webp"],
      skills: ["C#", ".Net", "WPF", "Azure DevOps"]),
];
