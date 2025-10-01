# MLOps Project: Vehicle Insurance Engagement Prediction 🚗

---

## 💡 Project Overview

This is a comprehensive end-to-end **MLOps (Machine Learning Operations)** project that tackles the challenge of **vehicle insurance engagement prediction**. The primary goal is to build a robust and scalable machine learning pipeline that predicts whether a user will be interested in purchasing vehicle insurance. This project demonstrates a deep understanding of modern software development practices, including CI/CD (Continuous Integration/Continuous Deployment), and leverages cloud-native technologies to build a production-ready system.

My solution is built on a Software Development Engineer (SDE) methodology, focusing on clean architecture, modularity, and automation. The entire workflow, from data ingestion to model deployment and monitoring, is automated, ensuring reliability and efficiency.

---

## 🚀 Key Features

* **End-to-End MLOps Pipeline**: A complete, automated pipeline that handles everything from data ingestion and validation to model training, evaluation, and deployment.
* **Scalable Architecture**: The project is built to handle large datasets and can be easily scaled up to meet increasing demands.
* **CI/CD Implementation**: A robust CI/CD pipeline is set up using GitHub Actions to automate testing and deployment to an **AWS EC2** instance, ensuring every code change is automatically validated and deployed.
* **Containerization**: The application is containerized using **Docker**, which guarantees consistent and reproducible environments across development, testing, and production.
* **Cloud Integration**: The project extensively uses **AWS** services for model storage (**S3**) and deployment (**EC2**), showcasing expertise in cloud computing.
* **Database Management**: **MongoDB Atlas** is used to handle and manage the project's data, demonstrating proficiency in NoSQL databases.
* **Comprehensive Logging and Exception Handling**: Robust logging and exception-handling mechanisms are implemented throughout the project for easy debugging and monitoring.

---

## 🛠️ Technology Stack

| Category | Technologies |
| :--- | :--- |
| **ML/Data Science** | Scikit-learn, Pandas, NumPy |
| **Backend** | Python 3.10 |
| **Database** | MongoDB Atlas |
| **Cloud** | Amazon Web Services (AWS): EC2, S3, ECR, IAM |
| **Containerization** | Docker |
| **CI/CD** | GitHub Actions |
| **Web Framework** | Flask |
| **Project Management** | `setup.py`, `pyproject.toml` |

---

## 📋 Project Flow


The core of this project is a robust, automated pipeline that orchestrates the entire machine learning lifecycle. 

This is the central workflow:

**Data Ingestion ➡️ Data Validation ➡️ Data Transformation ➡️ Model Training ➡️ Model Evaluation ➡️ Model Pusher ➡️ Prediction Pipeline**

### Phase 1: Project Setup and Environment Configuration
1.  **Project Templating**: An automated script (`template.py`) is used to set up the foundational project structure.
2.  **Package Management**: Local packages are configured using `setup.py` and `pyproject.toml` for easy dependency management.
3.  **Virtual Environment**: A dedicated Conda virtual environment is created to isolate project dependencies.

### Phase 2: Data Handling and Storage with MongoDB
1.  **MongoDB Atlas Setup**: A cloud-based MongoDB cluster is configured on Atlas.
2.  **Database Connection**: Connection strings are securely stored as environment variables.
3.  **Data Ingestion**: A notebook is used to load and push the raw dataset to the MongoDB database.

---

### Phase 3: Core ML Pipeline Components
1.  **Data Ingestion**: Data is securely fetched from MongoDB and converted into a DataFrame.
2.  **Data Validation**: The ingested data is validated against a predefined schema (`schema.yaml`) to ensure data integrity and quality.
3.  **Data Transformation**: Raw data is transformed through feature engineering and preprocessing steps to prepare it for model training.
4.  **Model Training**: An optimal machine learning model is trained on the preprocessed data.

---

### Phase 4: Cloud Integration and Deployment
1.  **AWS Setup**: IAM users, S3 buckets, and EC2 instances are configured to support the MLOps workflow. Access keys are securely set as environment variables.
2.  **Model Registry**: The trained model is stored in an S3 bucket, serving as a model registry for versioning and easy retrieval.

---

### Phase 5: Production and CI/CD
1.  **Prediction Pipeline**: The final machine learning model is exposed via a Flask API.
2.  **Containerization**: A Dockerfile is created to containerize the entire application, making it easily deployable.
3.  **CI/CD Pipeline**: A GitHub Actions workflow (`aws.yaml`) automates the following steps:
    * Build the Docker image.
    * Push the Docker image to **AWS ECR (Elastic Container Registry)**.
    * Deploy the application to the **AWS EC2** instance via a self-hosted runner. 
4.  **Final Deployment**: The application is served on an AWS EC2 instance, accessible via a public IP address and port 5080.

---

## 🙏 Acknowledgments

I would like to express my sincere gratitude to ___ for their exceptional guidance and mentorship throughout the development of this project. Their insights and profound knowledge were instrumental in helping me grasp complex MLOps concepts and build a truly robust, production-ready system. This project is a direct reflection of the invaluable lessons learned under their tutelage.