package com.aspose.imaging.model;

public class BmpProperties {
  private String Compression = null;
  /**
         * getCompression
         * Gets String
         * @return Compression
         */
  public String getCompression() {
    return Compression;
  }

        /**
         * setCompression
         * Sets String
         * @param Compression String
         */
  public void setCompression(String Compression) {
    this.Compression = Compression;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class BmpProperties {\n");
    sb.append("  Compression: ").append(Compression).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

