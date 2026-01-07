# 🎓 University Student Analytics Project

This project is a data analytics and business intelligence study based on a university student information system.  
It demonstrates how relational database design, SQL views, and Power BI dashboards can be used together to analyze academic performance and workload.

---

## 📌 Project Overview

The project focuses on analyzing:
- Student academic performance
- Course success rates (pass/fail)
- Academic staff workload
- Department-based student distribution
- Individual student report cards using drill-through

All analytical logic is primarily handled in the **SQL layer** using views, while **Power BI** is used for visualization and interaction.

---

## 🛠️ Technologies Used

- **PostgreSQL**
  - Relational database design
  - SQL queries and views
- **Power BI**
  - Interactive dashboards
  - Drill-through functionality
  - Data modeling and visualization

---

## 🗄️ Database Structure

The database consists of the following tables:

- `bolumler` (Departments)
- `ogrenciler` (Students)
- `akademisyenler` (Academic Staff)
- `dersler` (Courses)
- `notlar` (Grades)

Key analytical views include:
- `vw_ogrenci_karnesi` – Student report card view
- `vw_akademisyen_yuku` – Academic workload view
- `vw_ogrenci_notlari` – Student grades and pass/fail analysis

---

## 📊 Dashboards & Analysis

### 1️⃣ Department-Based Student Distribution
- Pie chart showing student percentages by department

### 2️⃣ Course Success Rates
- Stacked column chart displaying pass/fail rates per course

### 3️⃣ Academic Staff Workload
- Matrix visualization showing the number of courses and students per academic staff member

### 4️⃣ Student Report Card (Drill-through)
- Detailed grade breakdown for each student
- Accessed by drilling through from the student list

---

## 🎯 Key Features

- SQL-based analytical views (no heavy DAX dependency)
- Clean relational data model
- Interactive Power BI dashboards
- Drill-through navigation for detailed student analysis

---

## 📝 Notes

Due to the absence of historical year data, time-based trend analysis was performed using available categorical dimensions such as academic terms and course-based distributions.

---

## 🚀 Future Improvements

- Adding historical year data for trend analysis
- Advanced GPA calculations based on course credits
- Enhanced visual formatting and KPI indicators

---

## 👤 Author

**Burcu Uzun**  
Industrial Engineering Graduate  
Interested in data analytics, business intelligence, and process optimization

---

