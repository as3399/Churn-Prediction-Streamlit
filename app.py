
import os
import google.generativeai as genai
import streamlit as st
import pandas as pd

st.set_page_config(page_title="Churn AI Assistant", layout="wide")

st.title("📊 Customer Churn AI Assistant")

# Load data
df = pd.read_csv(r"Telco-Customer-Churn-predicted.csv")

st.write("Dataset Preview")
st.dataframe(df.head())


# configure API key
genai.configure(api_key=os.getenv("GEMINI_API_KEY"))

model = genai.GenerativeModel("gemini-3-flash-preview")


#Question
question = st.text_input("Ask a business Question : ")
if question:
    # Optional: give dataset context to AI
    prompt = f"""
    You are a data analyst.

    Dataset context:
    - This is a telecom churn dataset
    - Columns include customer behavior, contract, charges, and churn prediction

    User question:
    {question}

    Give a clear business insight answer.
    """

    response = model.generate_content(prompt)

    st.write("### 🤖 AI Response")
    st.write(response.text)

