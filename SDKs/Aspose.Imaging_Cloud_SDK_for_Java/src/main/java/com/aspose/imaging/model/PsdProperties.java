package com.aspose.imaging.model;

public class PsdProperties {
  private Integer BitsPerChannel = null;
  private Integer ChannelsCount = null;
  private String ColorMode = null;
  private String Compression = null;
  /**
         * getBitsPerChannel
         * Gets Integer
         * @return BitsPerChannel
         */
  public Integer getBitsPerChannel() {
    return BitsPerChannel;
  }

        /**
         * setBitsPerChannel
         * Sets Integer
         * @param BitsPerChannel Integer
         */
  public void setBitsPerChannel(Integer BitsPerChannel) {
    this.BitsPerChannel = BitsPerChannel;
  }

  /**
         * getChannelsCount
         * Gets Integer
         * @return ChannelsCount
         */
  public Integer getChannelsCount() {
    return ChannelsCount;
  }

        /**
         * setChannelsCount
         * Sets Integer
         * @param ChannelsCount Integer
         */
  public void setChannelsCount(Integer ChannelsCount) {
    this.ChannelsCount = ChannelsCount;
  }

  /**
         * getColorMode
         * Gets String
         * @return ColorMode
         */
  public String getColorMode() {
    return ColorMode;
  }

        /**
         * setColorMode
         * Sets String
         * @param ColorMode String
         */
  public void setColorMode(String ColorMode) {
    this.ColorMode = ColorMode;
  }

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
    sb.append("class PsdProperties {\n");
    sb.append("  BitsPerChannel: ").append(BitsPerChannel).append("\n");
    sb.append("  ChannelsCount: ").append(ChannelsCount).append("\n");
    sb.append("  ColorMode: ").append(ColorMode).append("\n");
    sb.append("  Compression: ").append(Compression).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

