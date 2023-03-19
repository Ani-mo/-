# Импортируем необходимую библиотеку
from PIL import Image
import os

# Указываем путь к папке с фотографиями
path = "C:/Users/Ani_mo/Desktop/Groups VK/I_Love _You"

# Получаем список файлов в папке
folder = os.listdir(path)

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