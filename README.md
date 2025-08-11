# robot_framework_automation

Automation demonstration using **Robot Framework**.

### Project Structure

- `.vscode`: IDE settings and configurations  
- `debug`: debugging scripts (e.g., `debug_script.py`)  
- `docs`: plain text commands, instructions, and setup notes  
- `mock_data`: mock data files (e.g., `dolorem_ipsum.txt`)  
- `output`: generated reports, logs, and output files from test runs  
- `resources`: reusable resource files including keywords, variables, and expected values (e.g., `keywords.robot`, `variables.robot`, `expected_values.robot`)  
- `robot-env`: Python virtual environment for this project  
- `runners`: PowerShell scripts (`.ps1`) to run one or all tests easily  
- `tests`: test cases and test suites (e.g., `test_login.robot`)  
- `examples`: early exploratory test cases kept for reference  
- `requirements.txt`: Python package dependencies for the project  
- `pyproject.toml`: Python project configuration and metadata  

### Purpose

This project aims to demonstrate the capabilities of Robot Framework by building a solid and reusable test automation framework. It provides a foundation for creating reliable automated tests that can be extended and adapted to various testing needs. By incorporating best practices and reusable components, it helps improve test coverage and streamline the testing process.

### Target Website

- [https://www.saucedemo.com/](https://www.saucedemo.com/)

### Tools and Libraries

- Robot Framework  
- SeleniumLibrary  
- Python

### Setup & Running Tests

1. Create and activate the virtual environment:  
   - Linux/macOS  
      - python -m venv robot-env  
      - source robot-env/bin/activate  
   - Windows  
      - python -m venv robot-env  
      - robot-env\Scripts\activate  
2. Install dependencies:  
   - pip install -r requirements.txt  
3. Run tests:  
   - Use PowerShell scripts in the runners folder to run individual or all tests.  
   - Or run directly with:  
      - robot tests/  
4. View reports in the output directory after test execution.  
