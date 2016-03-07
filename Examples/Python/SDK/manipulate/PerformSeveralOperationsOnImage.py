import common

input_file = "sample1.png"
input_path = common.get_path(__file__, input_file)

output_file = "output.jpg"
output_path = common.get_path(__file__, output_file)

format = "jpg"
x = 96
y = 96
newWidth = 300
newHeight = 300
rectWidth = 200
rectHeight = 200
rotateFlipMethod = ""
# invoke Aspose.Imaging Cloud SDK API to perform format change operation without using cloud storage
response = common.imagingApi.PostImageSaveAs_ImagingApi_0(format, newWidth, newHeight, x, y, rectWidth, rectHeight, rotateFlipMethod, file=input_path)

if response.Status == 'OK':
    # download image from API response
    with open(output_path, 'wb') as f:
        for chunk in response.InputStream:
            f.write(chunk)
