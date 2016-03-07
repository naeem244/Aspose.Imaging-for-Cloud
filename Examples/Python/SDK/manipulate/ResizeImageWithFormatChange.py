import common

input_file = "sample1.png"
input_path = common.get_path(__file__, input_file)

output_file = "output.jpg"
output_path = common.get_path(__file__, output_file)

format = "jpg"
newWidth = 200
newHeight = 200

# invoke Aspose.Imaging Cloud SDK API to perform format change operation without using cloud storage
response = common.imagingApi.PostChangeImageScale(format, newWidth, newHeight, file = input_path)

if response.Status == 'OK':
    # download image from API response
    with open(output_path, 'wb') as f:
        for chunk in response.InputStream:
            f.write(chunk)
