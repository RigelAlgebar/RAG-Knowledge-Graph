
# 🚀 CoachHub Challenge Solution

Welcome to the repository for the CoachHub challenge! This solution was designed with fast prototyping in mind to efficiently explore, clean, and build machine learning models. Below is a detailed overview of the project structure and key components.

---

## 📂 Repository Structure

### **`ml`** Folder
The `ml` folder contains all files related to the machine learning section, organized as follows:
- **`data/`**: Contains the datasets (`corpus.csv`, `queries.csv`) used for training and exploration.
- **`models/`**: Stores the model files, including:
  - `my_custom_index.zip`: The trained RAG index (handled using Git LFS).
  - `fine_tuned_bert/`: Contains the fine-tuned TinyBERT model.
- **`notebooks/`**: Contains Jupyter notebooks documenting each stage of the machine learning process.
- **`results/`**: Holds output files and results from model evaluation and testing.

### **`sql`** Folder
The `sql` folder contains a SQL file with the queries used for the data management task.

---

## 📓 Machine Learning Notebooks

I’ve broken down the machine learning solution into a series of four notebooks, each focusing on a specific task:

1. **`1_Data_Cleaning_&_Exploration.ipynb`**:
   - Basic data exploration and cleaning to prepare the datasets for modeling.
   - The cleaning process was minimalistic for rapid experimentation.

2. **`2_RAG_Index_Training.ipynb`**:
   - Trains the RAG (Retrieval-Augmented Generation) index to retrieve related documents for given queries.
   - Experimented with RAG models both with and without a knowledge graph. The knowledge graph helped improve **precision** but slightly lowered **recall**. Overall, precision without the knowledge graph was 25.46%, while with the graph it was 51.86%.

3. **`3_Train_Toxic_Classifier.ipynb`**:
   - Fine-tuned a **TinyBERT** model to classify toxic and non-toxic queries. TinyBERT was chosen for its speed and ability to perform well in prototyping environments.

4. **`4_RAG_API.ipynb`**:
   - Developed a **FastAPI** to serve the RAG-based query retrieval system.
   - The API was deployed using **Uvicorn** and **Pyngrok**, allowing for public exposure directly from Colab. While not ideal for production, it enabled me to leverage Colab’s GPU resources for faster prototyping.

---

## ⚡ Fast Prototyping Approach

This solution was built with **speed** and **efficiency** in mind, focusing on rapid experimentation and iteration. The exploration and data cleaning processes were kept minimal to maintain the fast prototyping spirit, and all models were trained with efficiency as a priority.

### 💡 Key Highlights:
- **RAG with and without Knowledge Graph**:
  - With a knowledge graph, the precision improved significantly, but recall decreased slightly. It provided better **focused retrieval**, but the model might miss some weakly connected documents.
- **TinyBERT for Toxic Classification**:
  - Fine-tuned TinyBERT to strike a balance between speed and performance.
  - It provided a quick and effective solution for classifying toxic vs. non-toxic queries.

---

## 🔮 Future Perspectives

### Potential Enhancements:
1. **Expand Text Cleaning and Preprocessing**:
   - Delve deeper into cleaning and preprocessing the text data for better input quality.

2. **Larger Models for RAG**:
   - Experiment with larger models for RAG to improve retrieval performance, especially for complex queries.

3. **More Sophisticated Knowledge Graphs**:
   - The knowledge graph used here was a basic semantic construction. Future iterations can explore more advanced techniques, such as **entity linking** and **relationship extraction**.

4. **Consider Flask for API**:
   - While FastAPI + Pyngrok worked for rapid prototyping, building a more stable and production-ready API using **Flask** could be beneficial for better API management and scalability.

---

## 🤔 Final Thoughts

Given the fast prototyping approach, this solution provided valuable insights without requiring significant time investment. While more sophisticated techniques could improve the results, this approach highlights the effectiveness of **rapid experimentation** in delivering useful insights quickly.

Feel free to explore the code and notebooks, and don't hesitate to reach out if you have any questions! 😊
