using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class TiffProperties {
    public string ByteOrder { get; set; }

    public ExifData ExifData { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TiffProperties {\n");
      sb.Append("  ByteOrder: ").Append(ByteOrder).Append("\n");
      sb.Append("  ExifData: ").Append(ExifData).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
