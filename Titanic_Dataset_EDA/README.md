# Titanic Dataset Survival Analysis

This project explores survival patterns of passengers aboard the Titanic using visualizations with Seaborn and Matplotlib.  
The goal is to identify factors that influenced survival rates based on different features.

## Visualizations and Key Findings

### 1. Age Distribution by Survival Status
- Younger passengers, particularly children, had a higher survival rate.

### 2. Survival by Gender
- Females survived at much higher rates than males.

### 3. Age Distribution by Passenger Class
- First-class passengers included older individuals.
- Third-class passengers were generally younger.

### 4. Survival by Embarked (Port of Embarkation)
- Passengers embarking from Cherbourg had the highest survival rates.
- Southampton passengers had comparatively lower chances of survival.

### 5. Fare by Survival Status
- Survivors tended to have paid higher ticket fares.
- Fare was positively correlated with survival.

### 6. Survival by Age Group
- Children had the highest survival rate.
- Seniors had the lowest chance of survival.

### 7. Family Size vs Survival (SibSp + Parch)
- Smaller family sizes (1-3) showed better survival outcomes.
- Very large family groups had lower survival rates.

### 8. Survival by Deck (First Letter of Cabin)
- Higher decks (A, B, C) had greater survival rates.
- Lower decks were associated with lower survival chances.

## Technologies Used
- Python
- Pandas
- Seaborn
- Matplotlib

## How to Run
1. Install required libraries:
    ```bash
    pip install pandas seaborn matplotlib
    ```
2. Load the Titanic dataset from Seaborn.
3. Execute each analysis cell to visualize survival patterns.

---

## Conclusion
Through exploratory analysis and visualizations, it is clear that age, gender, class, fare, family size, and deck location significantly influenced survival chances on the Titanic.

