from flask import Flask, request  
app = Flask(__name__)  
@app.route('/log', methods=['POST'])  
def log():  
    with open("logs.txt", "a") as f:  
        f.write(f"Тестовые данные: {request.form}\n")  
    return "Ошибка соединения"  
if __name__ == "__main__":  
    app.run(port=5000)
