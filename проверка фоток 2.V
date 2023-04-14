# Импортируем необходимые библиотеки
from PIL import Image
import os
import sys
from natsort import natsorted

# Получаем путь к папке с фотографиями из аргумента командной строки
if len(sys.argv) == 2:
    path = sys.argv[1]
else:
    path = input("Введите путь к папке с фотографиями: ")

# Проверяем, существует ли указанная папка
if not os.path.isdir(path):
    print("Указанная папка не существует.")
    sys.exit()

# Получаем список файлов в папке и сортируем их по имени файла с использованием функции-ключа
folder = natsorted(os.listdir(path))

# Итерируемся по каждому файлу и проверяем его размеры
for filename in folder:
    if filename.endswith(".jpg") or filename.endswith(".png"):
        # Открываем изображение
        im = Image.open(os.path.join(path, filename))

        # Получаем размеры изображения
        width, height = im.size

        # Проверяем размеры изображения
        if width >= 500 and height >= 500:
            print(filename + " - Размер фото подходит")
        else:
            print(filename + " - Размер фото не подходит")

# Ожидаем ввода от пользователя, чтобы предотвратить закрытие окна Python
input("Нажмите Enter для выхода...")
