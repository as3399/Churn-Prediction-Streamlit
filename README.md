# 📉 Customer Churn Prediction & Analytics Dashboard

An end-to-end data analytics solution that predicts customer churn, explains the driving factors, and delivers actionable insights through an interactive dashboard and a GenAI-powered Q&A app.

---Streamlit Link: https://churn-prediction-app-lcrr6iugz9nev2f8cujf9w.streamlit.app/

## 🚀 Project Overview

| | |
|---|---|
| **Goal** | Identify customers at risk of churning and provide business users with data-driven insights |
| **Dataset** | Telecom Customer Churn (Kaggle) / SaaS Subscription Dataset |
| **Stack** | Python · SQL · Machine Learning · Power BI · Streamlit · LLM API |

---

## 🏗️ Architecture

```
CSV / SQL Database
        ↓
Python (Pandas) — Data Cleaning & EDA
        ↓
SQL Layer — Business KPIs & Behavior Analysis
        ↓
ML Model — Churn Prediction (XGBoost / Random Forest)
        ↓
Power BI — Executive Dashboard
        ↓
Streamlit + LLM — GenAI Q&A App

---

## 🔧 Tech Stack

| Layer | Tools |
|---|---|
| Data Processing | Python, Pandas, NumPy |
| Visualization (EDA) | Matplotlib, Seaborn |
| Database | PostgreSQL |
| Machine Learning | Scikit-learn, XGBoost, SHAP |
| BI Dashboard | Power BI |
| GenAI App | Streamlit, GenAI API |

---

## 📋 Project Phases

### Phase 1 — Data Cleaning & EDA
- Handled missing values, removed duplicates, encoded categoricals
- Feature engineering: tenure groups, avg usage, payment risk category
- EDA: churn distribution, correlation heatmap, customer segmentation

### Phase 2 — SQL Analysis
- Loaded dataset into MySQL/PostgreSQL
- Wrote 10+ queries covering: monthly churn rate, churn by plan, ARPU, CLV, high-value customer churn
- Used window functions for running churn % and high-risk customer ranking

### Phase 3 — Machine Learning
- Models: Logistic Regression (baseline) → Random Forest → XGBoost
- Evaluation metrics: Accuracy, Precision, Recall, F1-Score, **ROC-AUC**
- Model explainability via **SHAP**/Feature Importance to identify top churn drivers

### Phase 4 — Power BI Dashboard
Four dashboard pages:
1. **Executive Summary** — Total customers, churn rate, revenue loss
2. **Churn Analysis** — Churn by age, plan, region; top 10 at-risk customers
3. **Revenue Insights** — ARPU, revenue vs churn correlation
4. **Customer Behavior** — Churn distibution, tenure vs churn

### Phase 5 — GenAI Streamlit App
- Natural language interface for business users
- Ask questions like *"Why are customers churning?"* or *"Which segment has the highest churn?"*
- Backend: Python + GenAI API connected to processed dataset / SQL DB
- Context-aware prompt engineering for accurate, relevant responses

---

## ⚙️ Setup & Installation

```bash
# 1. Clone the repository
git clone https://github.com/as3399/Churn-Prediction-Streamlit
cd customer-churn-prediction

# 2. Install dependencies
pip install -r requirements.txt

# 3. Run the Streamlit app
streamlit run streamlit_app.py
```

### Environment Variables
Create a `.env` file in the root directory:
```
GENAI_API_KEY=your_GenAi_api_key

```

---

## 📦 Deliverables

- [x] Python scripts (cleaning, EDA, ML)
- [x] SQL queries
- [x] Power BI dashboard (`.pbix`)
- [x] Streamlit GenAI app
- [x] Project documentation

---

## 🙋 Author

ANGAD SINGH
[LinkedIn](https://linkedin.com/in/as3399) · [GitHub](https://github.com/as3399)

---

## 📄 License

This project is licensed under the MIT License.
