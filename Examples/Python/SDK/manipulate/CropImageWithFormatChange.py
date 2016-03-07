import common

input_file = "sample1.png"
input_path = common.get_path(__file__, input_file)

output_file = "output.jpg"
output_path = common.get_path(__file__, output_file)

common.StorageApi.PutCreate(input_file, input_path)

format = "jpg"
x = 30
y = 40
width = 100
height = 100
# invoke Aspose.Imaging Cloud SDK API to perform format change operation without using cloud storage
response = common.imagingApi.GetCropImage(input_file, format, x, y, width, height)

if response.Status == 'OK':
    # download image from API response
    with open(output_path, 'wb') as f:
        for chunk in response.InputStream:
            f.write(chunk)
