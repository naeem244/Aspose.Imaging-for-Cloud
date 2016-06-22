package com.aspose.imaging.model;

public class JfifData {
  private String DensityUnits = null;
  private Integer Version = null;
  private Integer XDensity = null;
  private Integer YDensity = null;
  /**
         * getDensityUnits
         * Gets String
         * @return DensityUnits
         */
  public String getDensityUnits() {
    return DensityUnits;
  }

        /**
         * setDensityUnits
         * Sets String
         * @param DensityUnits String
         */
  public void setDensityUnits(String DensityUnits) {
    this.DensityUnits = DensityUnits;
  }

  /**
         * getVersion
         * Gets Integer
         * @return Version
         */
  public Integer getVersion() {
    return Version;
  }

        /**
         * setVersion
         * Sets Integer
         * @param Version Integer
         */
  public void setVersion(Integer Version) {
    this.Version = Version;
  }

  /**
         * getXDensity
         * Gets Integer
         * @return XDensity
         */
  public Integer getXDensity() {
    return XDensity;
  }

        /**
         * setXDensity
         * Sets Integer
         * @param XDensity Integer
         */
  public void setXDensity(Integer XDensity) {
    this.XDensity = XDensity;
  }

  /**
         * getYDensity
         * Gets Integer
         * @return YDensity
         */
  public Integer getYDensity() {
    return YDensity;
  }

        /**
         * setYDensity
         * Sets Integer
         * @param YDensity Integer
         */
  public void setYDensity(Integer YDensity) {
    this.YDensity = YDensity;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class JfifData {\n");
    sb.append("  DensityUnits: ").append(DensityUnits).append("\n");
    sb.append("  Version: ").append(Version).append("\n");
    sb.append("  XDensity: ").append(XDensity).append("\n");
    sb.append("  YDensity: ").append(YDensity).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

