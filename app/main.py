"""
This is a simple Streamlit app that demonstrates CI/CD.
"""
import datetime
import socket
import streamlit as st

st.set_page_config(page_title="DevOps Lab App", page_icon="🚀")

st.title("🚀 CI/CD Streamlit Demo")
st.write("Deployed using Docker + GitHub Actions")

st.subheader("Server Info")
st.write(f"Hostname: {socket.gethostname()}")
st.write(f"Current Time: {datetime.datetime.now()}")

name = st.text_input("Enter your name:")

if name:
    st.success(f"Hello {name}, your app is running from Docker!")
