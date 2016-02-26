using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class GifProperties {
    public string BackgroundColor { get; set; }

    public bool? HasTrailer { get; set; }

    public string PixelAspectRatio { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GifProperties {\n");
      sb.Append("  BackgroundColor: ").Append(BackgroundColor).Append("\n");
      sb.Append("  HasTrailer: ").Append(HasTrailer).Append("\n");
      sb.Append("  PixelAspectRatio: ").Append(PixelAspectRatio).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
