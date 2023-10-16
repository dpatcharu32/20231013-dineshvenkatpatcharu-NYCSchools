A mobile application for iOS designed for the purpose of searching, sorting, and presenting detailed information pertaining to high schools within the city of New York. This application was developed as part of a take-home assignment.

Title: 20231013-dineshvenkatpatcharu-NYCSchools

Technological Components:

Implementation of asynchronous programming using async/await
Utilization of REST APIs for data retrieval
Application of the Model-View-ViewModel (MVVM) architectural pattern
Comprehensive unit testing with the XCTest framework
Integration of Swift Charts for data visualization
Development using the SwiftUI framework
Utilization of the Swift programming language
Notable Features:

The incorporation of the ".searchable" view modifier facilitates a straightforward substring-based search for school names, complemented by a menu for sorting options.
Implementation of functional Link views, equipped with custom URL schemes, allowing users to promptly access the school's website, make a phone call to the school, compose an email to the school's provided email address, or access the school's location via the Maps application.
For the presentation of school SAT scores, the application employs Swift Charts to create a bespoke horizontal bar chart. This chart incorporates ".annotation" modifiers and customized AxisMarks for improved data visualization.
Application of formatters, specifically ".number.notation(.compactName)", to ensure the efficient and elegant display of school statistics.
The adoption of "JSON decoder.keyDecodingStrategy = .convertFromSnakeCase" to maintain a Swifty nomenclature for model struct properties, reducing the need to assign raw String values to each CodingKey case.
The MVVM architecture was chosen to effectively segregate models, views, and business logic, enhancing code maintainability and organization.
Rigorous unit testing, utilizing XCTest, is employed, with a primary focus on the JSON decoding component. This approach ensures the stability of the application, particularly when model struct changes occur.
The adoption of modern async/await techniques for network requests, supplanting the older, closure-based methods, enhancing network performance and code readability.
Development of a versatile Statistic view and a customized LabeledContent style to present school statistics in a visually pleasing and coherent format.

