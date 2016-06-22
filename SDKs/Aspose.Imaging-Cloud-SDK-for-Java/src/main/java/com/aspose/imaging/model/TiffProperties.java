package com.aspose.imaging.model;

import com.aspose.imaging.model.ExifData;
public class TiffProperties {
  private String ByteOrder = null;
  private ExifData ExifData = null;
  /**
         * getByteOrder
         * Gets String
         * @return ByteOrder
         */
  public String getByteOrder() {
    return ByteOrder;
  }

        /**
         * setByteOrder
         * Sets String
         * @param ByteOrder String
         */
  public void setByteOrder(String ByteOrder) {
    this.ByteOrder = ByteOrder;
  }

  /**
         * getExifData
         * Gets ExifData
         * @return ExifData
         */
  public ExifData getExifData() {
    return ExifData;
  }

        /**
         * setExifData
         * Sets ExifData
         * @param ExifData ExifData
         */
  public void setExifData(ExifData ExifData) {
    this.ExifData = ExifData;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TiffProperties {\n");
    sb.append("  ByteOrder: ").append(ByteOrder).append("\n");
    sb.append("  ExifData: ").append(ExifData).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

