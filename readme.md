# scanditask
OOP php app.
## Project Title
web-app (accessible by an URL) containing two pages for:
1. Product list page
2. Adding a product page

## Descriotion:-
- Utilize **OOP principles** to handle differences in type logic/behavior
    - Procedural PHP code with  PHP classes.
    - For OOP you would need to demonstrate code structuring in meaningful classes that extend each other, with abstract class for the main product logic.
    - The polymorphism provision.
    - MySQL logic should be handled by objects with properties instead of direct column values with  setters and getters.
- Meet PSR standards ([https://www.php-fig.org](https://www.php-fig.org/))
- No conditional statements for handling differences in product types
- 1 general endpoint for product saving
- PHP: 8.0.2 plain classes and OOP approach.
- SASS.
- The form should be dynamically changed when the type is switched.
- Special attributes should have a description, related to their type, e.g.: “Please, provide dimensions” / “Please, provide weight” / “Please, provide size” when related product type is selected
- All fields are mandatory for submission, missing values should trigger notification “Please, submit required data”
- Js Validation.
- Implement input field value validation, invalid data must trigger notification “Please, provide the data of indicated type”
- Notification messages should appear on the same page without reloading that's happen by js.
- The page  have a “Save” button to save the product. Once saved, return to the “Product List” page with the new product added.
- The page have a “Cancel” button to cancel adding the product action. Once canceled, returned to the “Product List” page with no new products added.
- No additional dialogues like “Are you sure you want to Save / Cancel?”