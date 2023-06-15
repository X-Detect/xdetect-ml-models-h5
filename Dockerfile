# Menggunakan base image Python 3.9
FROM python:3.11

# Menetapkan working directory di dalam container
WORKDIR /app

# Menyalin requirements.txt ke dalam container
COPY requirements.txt .

# Menginstal dependencies yang diperlukan
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin seluruh konten di dalam direktori proyek ke dalam container
COPY . .

# Menjalankan perintah untuk menjalankan aplikasi Flask
CMD ["python", "main.py"]
