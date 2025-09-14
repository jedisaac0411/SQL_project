# Data Analyst Job Market in Los Angeles (2023)
## 📌 Overview
This project analyzes the **Data Analyst job market in Los Angeles (2023)**.  
Although the original dataset contains various data-related roles (*Data Scientist, Data Engineer, etc.*),  
this project filters specifically for **Data Analyst jobs located in Los Angeles, CA**.  

The analysis explores:  
- The **top-paying jobs**  
- The **most in-demand skills**  
- The **highest-paying skills**  
- The **optimal skills** (balance between demand and salary)  

---

## 📂 Dataset
The dataset comes from a broader collection of U.S. **data job postings in 2023**.  

- **Original Dataset** → [Google Drive Link](https://drive.google.com/drive/folders/1qnEsw7RfnDlZDg0T7ZUPOS9VT_cW7zR5?usp=drive_link)  
- **Filtered Scope** → Only **Data Analyst jobs in Los Angeles** were analyzed.  

---

## ⚙️ Methodology
1. Imported and cleaned the dataset (CSV format).  
2. Filtered job postings to include only:  
   - Job title = *Data Analyst*  
   - Location = *Los Angeles, CA*  
3. Aggregated job postings to calculate:  
   - **Average salaries** by role  
   - **Skill demand** (frequency in job descriptions)  
   - **Skill salary potential** (average salary per skill)  
4. Identified *optimal skills* by comparing **demand vs. salary trade-offs**.  

---

## 📊 Key Insights

### 💼 Top Paying Jobs
- Roles like **Data Analyst Manager** and **Senior Data Analyst** reach **$180K–$220K+** average salaries.  
- **TikTok** and **Quizlet** frequently appear as top-paying employers.  

![Top Paying Jobs](resources\charts\top_paying_jobs.png)

---

### 🛠️ Top Paying Skills
- High-paying skills include **SQL, Python, and R**.  
- Visualization tools like **Tableau** also boost earning potential.  

---

### 📈 Top Demanded Skills
- **SQL** is the most demanded skill, required in **800+ postings**.  
- Other essentials: **Excel, Tableau, Python**.  

![Top Demanded Skills](resources\charts\top_demanded_jobs.png)

---

### ⚖️ Optimal Skills
- Skills that balance demand and salary growth:  
  - **SQL** → highest demand + strong pay  
  - **Python** → widely required + top-paying  
  - **Tableau** → competitive salary + stable demand  

![Optimal Skills](resources\charts\optimal_skills.png)


