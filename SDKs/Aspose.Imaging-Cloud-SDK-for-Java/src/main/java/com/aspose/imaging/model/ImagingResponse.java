package com.aspose.imaging.model;

import com.aspose.imaging.model.TiffProperties;
import com.aspose.imaging.model.BmpProperties;
import com.aspose.imaging.model.PsdProperties;
import com.aspose.imaging.model.GifProperties;
import com.aspose.imaging.model.JpegProperties;
import com.aspose.imaging.model.PngProperties;
public class ImagingResponse {
  private Integer Height = null;
  private Integer Width = null;
  private Integer BitsPerPixel = null;
  private BmpProperties BmpProperties = null;
  private GifProperties GifProperties = null;
  private JpegProperties JpegProperties = null;
  private PngProperties PngProperties = null;
  private TiffProperties TiffProperties = null;
  private PsdProperties PsdProperties = null;
  private Double HorizontalResolution = null;
  private Double VerticalResolution = null;
  private Boolean IsCached = null;
  private String Code = null;
  private String Status = null;
  /**
         * getHeight
         * Gets Integer
         * @return Height
         */
  public Integer getHeight() {
    return Height;
  }

        /**
         * setHeight
         * Sets Integer
         * @param Height Integer
         */
  public void setHeight(Integer Height) {
    this.Height = Height;
  }

  /**
         * getWidth
         * Gets Integer
         * @return Width
         */
  public Integer getWidth() {
    return Width;
  }

        /**
         * setWidth
         * Sets Integer
         * @param Width Integer
         */
  public void setWidth(Integer Width) {
    this.Width = Width;
  }

  /**
         * getBitsPerPixel
         * Gets Integer
         * @return BitsPerPixel
         */
  public Integer getBitsPerPixel() {
    return BitsPerPixel;
  }

        /**
         * setBitsPerPixel
         * Sets Integer
         * @param BitsPerPixel Integer
         */
  public void setBitsPerPixel(Integer BitsPerPixel) {
    this.BitsPerPixel = BitsPerPixel;
  }

  /**
         * getBmpProperties
         * Gets BmpProperties
         * @return BmpProperties
         */
  public BmpProperties getBmpProperties() {
    return BmpProperties;
  }

        /**
         * setBmpProperties
         * Sets BmpProperties
         * @param BmpProperties BmpProperties
         */
  public void setBmpProperties(BmpProperties BmpProperties) {
    this.BmpProperties = BmpProperties;
  }

  /**
         * getGifProperties
         * Gets GifProperties
         * @return GifProperties
         */
  public GifProperties getGifProperties() {
    return GifProperties;
  }

        /**
         * setGifProperties
         * Sets GifProperties
         * @param GifProperties GifProperties
         */
  public void setGifProperties(GifProperties GifProperties) {
    this.GifProperties = GifProperties;
  }

  /**
         * getJpegProperties
         * Gets JpegProperties
         * @return JpegProperties
         */
  public JpegProperties getJpegProperties() {
    return JpegProperties;
  }

        /**
         * setJpegProperties
         * Sets JpegProperties
         * @param JpegProperties JpegProperties
         */
  public void setJpegProperties(JpegProperties JpegProperties) {
    this.JpegProperties = JpegProperties;
  }

  /**
         * getPngProperties
         * Gets PngProperties
         * @return PngProperties
         */
  public PngProperties getPngProperties() {
    return PngProperties;
  }

        /**
         * setPngProperties
         * Sets PngProperties
         * @param PngProperties PngProperties
         */
  public void setPngProperties(PngProperties PngProperties) {
    this.PngProperties = PngProperties;
  }

  /**
         * getTiffProperties
         * Gets TiffProperties
         * @return TiffProperties
         */
  public TiffProperties getTiffProperties() {
    return TiffProperties;
  }

        /**
         * setTiffProperties
         * Sets TiffProperties
         * @param TiffProperties TiffProperties
         */
  public void setTiffProperties(TiffProperties TiffProperties) {
    this.TiffProperties = TiffProperties;
  }

  /**
         * getPsdProperties
         * Gets PsdProperties
         * @return PsdProperties
         */
  public PsdProperties getPsdProperties() {
    return PsdProperties;
  }

        /**
         * setPsdProperties
         * Sets PsdProperties
         * @param PsdProperties PsdProperties
         */
  public void setPsdProperties(PsdProperties PsdProperties) {
    this.PsdProperties = PsdProperties;
  }

  /**
         * getHorizontalResolution
         * Gets Double
         * @return HorizontalResolution
         */
  public Double getHorizontalResolution() {
    return HorizontalResolution;
  }

        /**
         * setHorizontalResolution
         * Sets Double
         * @param HorizontalResolution Double
         */
  public void setHorizontalResolution(Double HorizontalResolution) {
    this.HorizontalResolution = HorizontalResolution;
  }

  /**
         * getVerticalResolution
         * Gets Double
         * @return VerticalResolution
         */
  public Double getVerticalResolution() {
    return VerticalResolution;
  }

        /**
         * setVerticalResolution
         * Sets Double
         * @param VerticalResolution Double
         */
  public void setVerticalResolution(Double VerticalResolution) {
    this.VerticalResolution = VerticalResolution;
  }

  /**
         * getIsCached
         * Gets Boolean
         * @return IsCached
         */
  public Boolean getIsCached() {
    return IsCached;
  }

        /**
         * setIsCached
         * Sets Boolean
         * @param IsCached Boolean
         */
  public void setIsCached(Boolean IsCached) {
    this.IsCached = IsCached;
  }

  /**
         * getCode
         * Gets String
         * @return Code
         */
  public String getCode() {
    return Code;
  }

        /**
         * setCode
         * Sets String
         * @param Code String
         */
  public void setCode(String Code) {
    this.Code = Code;
  }

  /**
         * getStatus
         * Gets String
         * @return Status
         */
  public String getStatus() {
    return Status;
  }

        /**
         * setStatus
         * Sets String
         * @param Status String
         */
  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImagingResponse {\n");
    sb.append("  Height: ").append(Height).append("\n");
    sb.append("  Width: ").append(Width).append("\n");
    sb.append("  BitsPerPixel: ").append(BitsPerPixel).append("\n");
    sb.append("  BmpProperties: ").append(BmpProperties).append("\n");
    sb.append("  GifProperties: ").append(GifProperties).append("\n");
    sb.append("  JpegProperties: ").append(JpegProperties).append("\n");
    sb.append("  PngProperties: ").append(PngProperties).append("\n");
    sb.append("  TiffProperties: ").append(TiffProperties).append("\n");
    sb.append("  PsdProperties: ").append(PsdProperties).append("\n");
    sb.append("  HorizontalResolution: ").append(HorizontalResolution).append("\n");
    sb.append("  VerticalResolution: ").append(VerticalResolution).append("\n");
    sb.append("  IsCached: ").append(IsCached).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

