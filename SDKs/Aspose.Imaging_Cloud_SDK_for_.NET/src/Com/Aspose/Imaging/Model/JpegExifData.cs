using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class JpegExifData {
    public string Artist { get; set; }

    public string Copyright { get; set; }

    public string DateTime { get; set; }

    public string ImageDescription { get; set; }

    public string Make { get; set; }

    public string Model { get; set; }

    public string Orientation { get; set; }

    public List<double?> PrimaryChromaticities { get; set; }

    public List<double?> ReferenceBlackWhite { get; set; }

    public string ResolutionUnit { get; set; }

    public string Software { get; set; }

    public List<int?> TransferFunction { get; set; }

    public double? XResolution { get; set; }

    public List<double?> YCbCrCoefficients { get; set; }

    public string YCbCrPositioning { get; set; }

    public double? YResolution { get; set; }

    public double? ApertureValue { get; set; }

    public string BodySerialNumber { get; set; }

    public double? BrightnessValue { get; set; }

    public string CFAPattern { get; set; }

    public string CameraOwnerName { get; set; }

    public string ColorSpace { get; set; }

    public string ComponentsConfiguration { get; set; }

    public double? CompressedBitsPerPixel { get; set; }

    public string Contrast { get; set; }

    public string CustomRendered { get; set; }

    public string DateTimeDigitized { get; set; }

    public string DateTimeOriginal { get; set; }

    public string DeviceSettingDescription { get; set; }

    public double? DigitalZoomRatio { get; set; }

    public string ExifVersion { get; set; }

    public double? ExposureBiasValue { get; set; }

    public double? ExposureIndex { get; set; }

    public string ExposureMode { get; set; }

    public string ExposureProgram { get; set; }

    public double? ExposureTime { get; set; }

    public double? FNumber { get; set; }

    public string FileSource { get; set; }

    public string Flash { get; set; }

    public double? FlashEnergy { get; set; }

    public string FlashpixVersion { get; set; }

    public double? FocalLength { get; set; }

    public int? FocalLengthIn35MmFilm { get; set; }

    public string FocalPlaneResolutionUnit { get; set; }

    public double? FocalPlaneXResolution { get; set; }

    public double? FocalPlaneYResolution { get; set; }

    public double? GPSAltitude { get; set; }

    public string GPSAltitudeRef { get; set; }

    public string GPSAreaInformation { get; set; }

    public double? GPSDOP { get; set; }

    public double? GPSDestBearing { get; set; }

    public string GPSDestBearingRef { get; set; }

    public double? GPSDestDistance { get; set; }

    public string GPSDestDistanceRef { get; set; }

    public List<double?> GPSDestLatitude { get; set; }

    public string GPSDestLatitudeRef { get; set; }

    public List<double?> GPSDestLongitude { get; set; }

    public string GPSDestLongitudeRef { get; set; }

    public int? GPSDifferential { get; set; }

    public double? GPSImgDirection { get; set; }

    public string GPSImgDirectionRef { get; set; }

    public string GPSDateStamp { get; set; }

    public List<double?> GPSLatitude { get; set; }

    public string GPSLatitudeRef { get; set; }

    public List<double?> GPSLongitude { get; set; }

    public string GPSLongitudeRef { get; set; }

    public string GPSMapDatum { get; set; }

    public string GPSMeasureMode { get; set; }

    public string GPSProcessingMethod { get; set; }

    public string GPSSatellites { get; set; }

    public double? GPSSpeed { get; set; }

    public string GPSSpeedRef { get; set; }

    public string GPSStatus { get; set; }

    public List<double?> GPSTimestamp { get; set; }

    public string GPSTrack { get; set; }

    public string GPSTrackRef { get; set; }

    public string GPSVersionID { get; set; }

    public string GainControl { get; set; }

    public double? Gamma { get; set; }

    public int? ISOSpeed { get; set; }

    public int? ISOSpeedLatitudeYYY { get; set; }

    public int? ISOSpeedLatitudeZZZ { get; set; }

    public int? PhotographicSensitivity { get; set; }

    public string ImageUniqueID { get; set; }

    public string LensMake { get; set; }

    public string LensModel { get; set; }

    public string LensSerialNumber { get; set; }

    public List<double?> LensSpecification { get; set; }

    public string LightSource { get; set; }

    public string MakerNoteRawData { get; set; }

    public double? MaxApertureValue { get; set; }

    public string MeteringMode { get; set; }

    public string OECF { get; set; }

    public int? PixelXDimension { get; set; }

    public int? PixelYDimension { get; set; }

    public int? RecommendedExposureIndex { get; set; }

    public string RelatedSoundFile { get; set; }

    public string Saturation { get; set; }

    public string SceneCaptureType { get; set; }

    public string SceneType { get; set; }

    public string SensingMethod { get; set; }

    public int? SensitivityType { get; set; }

    public int? Sharpness { get; set; }

    public double? ShutterSpeedValue { get; set; }

    public string SpatialFrequencyResponse { get; set; }

    public string SpectralSensitivity { get; set; }

    public int? StandardOutputSensitivity { get; set; }

    public List<int?> SubjectArea { get; set; }

    public double? SubjectDistance { get; set; }

    public string SubjectDistanceRange { get; set; }

    public List<int?> SubjectLocation { get; set; }

    public string SubsecTime { get; set; }

    public string SubsecTimeDigitized { get; set; }

    public string SubsecTimeOriginal { get; set; }

    public string UserComment { get; set; }

    public string WhiteBalance { get; set; }

    public List<double?> WhitePoint { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class JpegExifData {\n");
      sb.Append("  Artist: ").Append(Artist).Append("\n");
      sb.Append("  Copyright: ").Append(Copyright).Append("\n");
      sb.Append("  DateTime: ").Append(DateTime).Append("\n");
      sb.Append("  ImageDescription: ").Append(ImageDescription).Append("\n");
      sb.Append("  Make: ").Append(Make).Append("\n");
      sb.Append("  Model: ").Append(Model).Append("\n");
      sb.Append("  Orientation: ").Append(Orientation).Append("\n");
      sb.Append("  PrimaryChromaticities: ").Append(PrimaryChromaticities).Append("\n");
      sb.Append("  ReferenceBlackWhite: ").Append(ReferenceBlackWhite).Append("\n");
      sb.Append("  ResolutionUnit: ").Append(ResolutionUnit).Append("\n");
      sb.Append("  Software: ").Append(Software).Append("\n");
      sb.Append("  TransferFunction: ").Append(TransferFunction).Append("\n");
      sb.Append("  XResolution: ").Append(XResolution).Append("\n");
      sb.Append("  YCbCrCoefficients: ").Append(YCbCrCoefficients).Append("\n");
      sb.Append("  YCbCrPositioning: ").Append(YCbCrPositioning).Append("\n");
      sb.Append("  YResolution: ").Append(YResolution).Append("\n");
      sb.Append("  ApertureValue: ").Append(ApertureValue).Append("\n");
      sb.Append("  BodySerialNumber: ").Append(BodySerialNumber).Append("\n");
      sb.Append("  BrightnessValue: ").Append(BrightnessValue).Append("\n");
      sb.Append("  CFAPattern: ").Append(CFAPattern).Append("\n");
      sb.Append("  CameraOwnerName: ").Append(CameraOwnerName).Append("\n");
      sb.Append("  ColorSpace: ").Append(ColorSpace).Append("\n");
      sb.Append("  ComponentsConfiguration: ").Append(ComponentsConfiguration).Append("\n");
      sb.Append("  CompressedBitsPerPixel: ").Append(CompressedBitsPerPixel).Append("\n");
      sb.Append("  Contrast: ").Append(Contrast).Append("\n");
      sb.Append("  CustomRendered: ").Append(CustomRendered).Append("\n");
      sb.Append("  DateTimeDigitized: ").Append(DateTimeDigitized).Append("\n");
      sb.Append("  DateTimeOriginal: ").Append(DateTimeOriginal).Append("\n");
      sb.Append("  DeviceSettingDescription: ").Append(DeviceSettingDescription).Append("\n");
      sb.Append("  DigitalZoomRatio: ").Append(DigitalZoomRatio).Append("\n");
      sb.Append("  ExifVersion: ").Append(ExifVersion).Append("\n");
      sb.Append("  ExposureBiasValue: ").Append(ExposureBiasValue).Append("\n");
      sb.Append("  ExposureIndex: ").Append(ExposureIndex).Append("\n");
      sb.Append("  ExposureMode: ").Append(ExposureMode).Append("\n");
      sb.Append("  ExposureProgram: ").Append(ExposureProgram).Append("\n");
      sb.Append("  ExposureTime: ").Append(ExposureTime).Append("\n");
      sb.Append("  FNumber: ").Append(FNumber).Append("\n");
      sb.Append("  FileSource: ").Append(FileSource).Append("\n");
      sb.Append("  Flash: ").Append(Flash).Append("\n");
      sb.Append("  FlashEnergy: ").Append(FlashEnergy).Append("\n");
      sb.Append("  FlashpixVersion: ").Append(FlashpixVersion).Append("\n");
      sb.Append("  FocalLength: ").Append(FocalLength).Append("\n");
      sb.Append("  FocalLengthIn35MmFilm: ").Append(FocalLengthIn35MmFilm).Append("\n");
      sb.Append("  FocalPlaneResolutionUnit: ").Append(FocalPlaneResolutionUnit).Append("\n");
      sb.Append("  FocalPlaneXResolution: ").Append(FocalPlaneXResolution).Append("\n");
      sb.Append("  FocalPlaneYResolution: ").Append(FocalPlaneYResolution).Append("\n");
      sb.Append("  GPSAltitude: ").Append(GPSAltitude).Append("\n");
      sb.Append("  GPSAltitudeRef: ").Append(GPSAltitudeRef).Append("\n");
      sb.Append("  GPSAreaInformation: ").Append(GPSAreaInformation).Append("\n");
      sb.Append("  GPSDOP: ").Append(GPSDOP).Append("\n");
      sb.Append("  GPSDestBearing: ").Append(GPSDestBearing).Append("\n");
      sb.Append("  GPSDestBearingRef: ").Append(GPSDestBearingRef).Append("\n");
      sb.Append("  GPSDestDistance: ").Append(GPSDestDistance).Append("\n");
      sb.Append("  GPSDestDistanceRef: ").Append(GPSDestDistanceRef).Append("\n");
      sb.Append("  GPSDestLatitude: ").Append(GPSDestLatitude).Append("\n");
      sb.Append("  GPSDestLatitudeRef: ").Append(GPSDestLatitudeRef).Append("\n");
      sb.Append("  GPSDestLongitude: ").Append(GPSDestLongitude).Append("\n");
      sb.Append("  GPSDestLongitudeRef: ").Append(GPSDestLongitudeRef).Append("\n");
      sb.Append("  GPSDifferential: ").Append(GPSDifferential).Append("\n");
      sb.Append("  GPSImgDirection: ").Append(GPSImgDirection).Append("\n");
      sb.Append("  GPSImgDirectionRef: ").Append(GPSImgDirectionRef).Append("\n");
      sb.Append("  GPSDateStamp: ").Append(GPSDateStamp).Append("\n");
      sb.Append("  GPSLatitude: ").Append(GPSLatitude).Append("\n");
      sb.Append("  GPSLatitudeRef: ").Append(GPSLatitudeRef).Append("\n");
      sb.Append("  GPSLongitude: ").Append(GPSLongitude).Append("\n");
      sb.Append("  GPSLongitudeRef: ").Append(GPSLongitudeRef).Append("\n");
      sb.Append("  GPSMapDatum: ").Append(GPSMapDatum).Append("\n");
      sb.Append("  GPSMeasureMode: ").Append(GPSMeasureMode).Append("\n");
      sb.Append("  GPSProcessingMethod: ").Append(GPSProcessingMethod).Append("\n");
      sb.Append("  GPSSatellites: ").Append(GPSSatellites).Append("\n");
      sb.Append("  GPSSpeed: ").Append(GPSSpeed).Append("\n");
      sb.Append("  GPSSpeedRef: ").Append(GPSSpeedRef).Append("\n");
      sb.Append("  GPSStatus: ").Append(GPSStatus).Append("\n");
      sb.Append("  GPSTimestamp: ").Append(GPSTimestamp).Append("\n");
      sb.Append("  GPSTrack: ").Append(GPSTrack).Append("\n");
      sb.Append("  GPSTrackRef: ").Append(GPSTrackRef).Append("\n");
      sb.Append("  GPSVersionID: ").Append(GPSVersionID).Append("\n");
      sb.Append("  GainControl: ").Append(GainControl).Append("\n");
      sb.Append("  Gamma: ").Append(Gamma).Append("\n");
      sb.Append("  ISOSpeed: ").Append(ISOSpeed).Append("\n");
      sb.Append("  ISOSpeedLatitudeYYY: ").Append(ISOSpeedLatitudeYYY).Append("\n");
      sb.Append("  ISOSpeedLatitudeZZZ: ").Append(ISOSpeedLatitudeZZZ).Append("\n");
      sb.Append("  PhotographicSensitivity: ").Append(PhotographicSensitivity).Append("\n");
      sb.Append("  ImageUniqueID: ").Append(ImageUniqueID).Append("\n");
      sb.Append("  LensMake: ").Append(LensMake).Append("\n");
      sb.Append("  LensModel: ").Append(LensModel).Append("\n");
      sb.Append("  LensSerialNumber: ").Append(LensSerialNumber).Append("\n");
      sb.Append("  LensSpecification: ").Append(LensSpecification).Append("\n");
      sb.Append("  LightSource: ").Append(LightSource).Append("\n");
      sb.Append("  MakerNoteRawData: ").Append(MakerNoteRawData).Append("\n");
      sb.Append("  MaxApertureValue: ").Append(MaxApertureValue).Append("\n");
      sb.Append("  MeteringMode: ").Append(MeteringMode).Append("\n");
      sb.Append("  OECF: ").Append(OECF).Append("\n");
      sb.Append("  PixelXDimension: ").Append(PixelXDimension).Append("\n");
      sb.Append("  PixelYDimension: ").Append(PixelYDimension).Append("\n");
      sb.Append("  RecommendedExposureIndex: ").Append(RecommendedExposureIndex).Append("\n");
      sb.Append("  RelatedSoundFile: ").Append(RelatedSoundFile).Append("\n");
      sb.Append("  Saturation: ").Append(Saturation).Append("\n");
      sb.Append("  SceneCaptureType: ").Append(SceneCaptureType).Append("\n");
      sb.Append("  SceneType: ").Append(SceneType).Append("\n");
      sb.Append("  SensingMethod: ").Append(SensingMethod).Append("\n");
      sb.Append("  SensitivityType: ").Append(SensitivityType).Append("\n");
      sb.Append("  Sharpness: ").Append(Sharpness).Append("\n");
      sb.Append("  ShutterSpeedValue: ").Append(ShutterSpeedValue).Append("\n");
      sb.Append("  SpatialFrequencyResponse: ").Append(SpatialFrequencyResponse).Append("\n");
      sb.Append("  SpectralSensitivity: ").Append(SpectralSensitivity).Append("\n");
      sb.Append("  StandardOutputSensitivity: ").Append(StandardOutputSensitivity).Append("\n");
      sb.Append("  SubjectArea: ").Append(SubjectArea).Append("\n");
      sb.Append("  SubjectDistance: ").Append(SubjectDistance).Append("\n");
      sb.Append("  SubjectDistanceRange: ").Append(SubjectDistanceRange).Append("\n");
      sb.Append("  SubjectLocation: ").Append(SubjectLocation).Append("\n");
      sb.Append("  SubsecTime: ").Append(SubsecTime).Append("\n");
      sb.Append("  SubsecTimeDigitized: ").Append(SubsecTimeDigitized).Append("\n");
      sb.Append("  SubsecTimeOriginal: ").Append(SubsecTimeOriginal).Append("\n");
      sb.Append("  UserComment: ").Append(UserComment).Append("\n");
      sb.Append("  WhiteBalance: ").Append(WhiteBalance).Append("\n");
      sb.Append("  WhitePoint: ").Append(WhitePoint).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
