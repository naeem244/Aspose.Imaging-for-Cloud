package com.aspose.imaging.model;

import com.aspose.imaging.model.JfifData;
import com.aspose.imaging.model.JpegExifData;
public class JpegProperties {
  private String Comment = null;
  private JpegExifData JpegExifData = null;
  private JfifData JpegJfifData = null;
  /**
	 * getComment
	 * Gets String
	 * @return Comment
	 */
  public String getComment() {
    return Comment;
  }

	/**
	 * setComment
	 * Sets String
	 * @param Comment String
	 */
  public void setComment(String Comment) {
    this.Comment = Comment;
  }

  /**
	 * getJpegExifData
	 * Gets JpegExifData
	 * @return JpegExifData
	 */
  public JpegExifData getJpegExifData() {
    return JpegExifData;
  }

	/**
	 * setJpegExifData
	 * Sets JpegExifData
	 * @param JpegExifData JpegExifData
	 */
  public void setJpegExifData(JpegExifData JpegExifData) {
    this.JpegExifData = JpegExifData;
  }

  /**
	 * getJpegJfifData
	 * Gets JfifData
	 * @return JpegJfifData
	 */
  public JfifData getJpegJfifData() {
    return JpegJfifData;
  }

	/**
	 * setJpegJfifData
	 * Sets JfifData
	 * @param JpegJfifData JfifData
	 */
  public void setJpegJfifData(JfifData JpegJfifData) {
    this.JpegJfifData = JpegJfifData;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class JpegProperties {\n");
    sb.append("  Comment: ").append(Comment).append("\n");
    sb.append("  JpegExifData: ").append(JpegExifData).append("\n");
    sb.append("  JpegJfifData: ").append(JpegJfifData).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

