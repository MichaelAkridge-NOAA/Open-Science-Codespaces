import os
import pandas as pd
import streamlit.components.v1 as components
import streamlit as st
import pygwalker as pyg

# Directory containing predefined datasets
DATA_DIR = "app"

# Set up the page config
st.set_page_config(
    page_title="NCRMP Data Explorer",
    layout="wide"
)

# Add Title
st.title("NCRMP Data Explorer")

@st.cache_data
def load_and_cache_files(data_dir):
    data_dict = {}
    for file_name in os.listdir(data_dir):
        file_path = os.path.join(data_dir, file_name)
        if file_name.endswith('.csv'):
            data_dict[file_name] = pd.read_csv(file_path)
        elif file_name.endswith('.xlsx'):
            data_dict[file_name] = pd.read_excel(file_path)
    return data_dict

@st.cache_data
def generate_pyg_html(data):
    return pyg.to_html(data)

# Sidebar for user inputs
with st.sidebar:
    st.title("Data Explorer")
    
    # Choose data source
    data_source = st.radio("Choose a data source", ["Select from list", "Upload"])
    
    if data_source == "Select from list":
        data_files = load_and_cache_files(DATA_DIR)
        filename_mapping = {os.path.splitext(name)[0]: name for name in data_files.keys()}
        selected_file = st.selectbox("Choose a data file", list(filename_mapping.keys()))
        data = data_files[filename_mapping[selected_file]]
    else:
        uploaded_file = st.file_uploader("Choose a data file", type=['csv', 'xlsx'])
        if uploaded_file is not None:
            if uploaded_file.name.endswith('.csv'):
                data = pd.read_csv(uploaded_file)
            elif uploaded_file.name.endswith('.xlsx'):
                data = pd.read_excel(uploaded_file)
        else:
            data = None

# Main area
if data is not None:
    try:
        #st.dataframe(data.head())
        pyg_html = generate_pyg_html(data)
        components.html(pyg_html, height=1000, scrolling=True)
    except Exception as e:
        st.error(f"An error occurred: {str(e)}")
        st.error("Please make sure the file is in the correct format and try again.")
else:
    st.warning("Please select or upload a data file to explore.")

