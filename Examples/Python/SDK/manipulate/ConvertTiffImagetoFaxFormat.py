import common

input_file = "sample1.tiff"
input_path = common.get_path(__file__, input_file)

output_file = "output.tiff"
output_path = common.get_path(__file__, output_file)

common.StorageApi.PutCreate(input_file, input_path)
# invoke Aspose.Imaging Cloud SDK API to perform format change operation without using cloud storage
response = common.imagingApi.GetTiffToFax(input_file)

if response.Status == 'OK':
    # download image from API response
    with open(output_path, 'wb') as f:
        for chunk in response.InputStream:
            f.write(chunk)
