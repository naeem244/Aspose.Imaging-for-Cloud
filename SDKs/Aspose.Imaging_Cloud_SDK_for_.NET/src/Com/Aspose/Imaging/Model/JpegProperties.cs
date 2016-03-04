using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class JpegProperties {
    public string Comment { get; set; }

    public JpegExifData JpegExifData { get; set; }

    public JfifData JpegJfifData { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class JpegProperties {\n");
      sb.Append("  Comment: ").Append(Comment).Append("\n");
      sb.Append("  JpegExifData: ").Append(JpegExifData).Append("\n");
      sb.Append("  JpegJfifData: ").Append(JpegJfifData).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
