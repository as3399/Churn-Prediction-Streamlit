
import os
from google import genai
import streamlit as st
import pandas as pd

st.set_page_config(page_title="Churn AI Assistant", layout="wide")

st.title("📊 Customer Churn AI Assistant")

# Load data
df = pd.read_csv(r"Telco-Customer-Churn-predicted.csv")

st.write("Dataset Preview")
st.dataframe(df.head())


# configure API key
client = genai.Client(api_key=os.getenv("GEMINI_API_KEY"))

question = st.text_input("Ask a business Question : ")
if question:
    prompt = f"""
You are a data analyst.

Dataset context:
- Telecom churn dataset
- Columns include customer behavior, contract, charges, and churn prediction
- Generate/calculate metrics

User question:
{question}

Give a clear business insight answer.
"""
    with st.spinner("Thinking...."):
        response = client.models.generate_content(
        model="gemini-3-flash-preview",
        contents=prompt
        )

    st.subheader("💡 AI Insight")
    st.write(response.text)

