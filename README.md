# listing

<img src="https://github.com/alpondith/listing/assets/31237736/c375d330-1769-4ad7-a59f-42fa5449458e" width="300"/>

## Application core build principle : 
 - Getx Pattern
 - Applied Uber Base Design System on UI components
 - Applied Atomic Pattern on file structure specifically on component and view

## Application details

This is a Flutter application that fetches a list of repositories from the GitHub API using "Flutter" as the query keyword. The fetched data is stored in a local database, allowing the app to be used in offline mode. The fetching of the repository list is paginated, loading 10 new items each time the user scrolls. The app is designed to refresh the data from the API no more frequently than once every 30 minutes.

The home page of the app displays the list of repositories. The list can be sorted by either the last updated date-time or star count, and the selected sorting option persists across app sessions.

Clicking on an item from the list navigates to a details page for that repository. The details page shows the repo owner's name, photo, the repository's description, last update date-time in a specific format, and any other fields of interest.

The repository list and repository details data that are loaded once are saved for offline browsing. This ensures that the user can still browse the data even when they are not connected to the internet.

Features Left: 
  - Cache the loaded data into a local database

