# NYC Schools Information App

**Author**: Dinesh Venkat Patcharu
**Date**: October 13, 2023


## Description

This iOS application is designed for the purpose of searching, sorting, and presenting detailed information pertaining to high schools within the city of New York. It was developed as part of a take-home assignment.

## Repository Title

[20231013-dineshvenkatpatcharu-NYCSchools]([https://github.com/dpatcharu32/20231013-dineshvenkatpatcharu-NYCSchools])

## Technological Components

- Implementation of asynchronous programming using async/await.
- Utilization of REST APIs for data retrieval.
- Application of the Model-View-ViewModel (MVVM) architectural pattern.
- Comprehensive unit testing with the XCTest framework.
- Integration of Swift Charts for data visualization.
- Development using the SwiftUI framework.
- Utilization of the Swift programming language.

## Notable Features

- **Search and Sorting:** The application incorporates the ".searchable" view modifier, facilitating a straightforward substring-based search for school names, complemented by a menu for sorting options.

- **Functional Links:** Implementation of functional Link views, equipped with custom URL schemes, allowing users to promptly access the school's website, make a phone call to the school, compose an email to the school's provided email address, or access the school's location via the Maps application.

- **SAT Score Visualization:** For the presentation of school SAT scores, the application employs Swift Charts to create a bespoke horizontal bar chart. This chart incorporates ".annotation" modifiers and customized AxisMarks for improved data visualization.

- **Data Formatting:** Application of formatters, specifically ".number.notation(.compactName)", to ensure the efficient and elegant display of school statistics.

- **JSON Decoding:** The adoption of "JSON decoder.keyDecodingStrategy = .convertFromSnakeCase" to maintain a Swifty nomenclature for model struct properties, reducing the need to assign raw String values to each CodingKey case.

- **MVVM Architecture:** The MVVM architecture was chosen to effectively segregate models, views, and business logic, enhancing code maintainability and organization.

- **Unit Testing:** Rigorous unit testing, utilizing XCTest, is employed, with a primary focus on the JSON decoding component. This approach ensures the stability of the application, particularly when model struct changes occur.

- **Async/Await:** The adoption of modern async/await techniques for network requests, supplanting the older, closure-based methods, enhances network performance and code readability.

- **Statistics Presentation:** Development of a versatile Statistic view and a customized LabeledContent style to present school statistics in a visually pleasing and coherent format.

## Installation and Usage

To run this application, you will need Xcode and an iOS simulator. Clone this repository, open the project in Xcode, and run it on the simulator.


## Acknowledgments

I would like to express my gratitude for the opportunity to work on this project.

---

Feel free to reach out if you have any questions or feedback.
