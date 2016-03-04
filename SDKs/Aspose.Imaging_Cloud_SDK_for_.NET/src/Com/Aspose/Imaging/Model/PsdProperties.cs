using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class PsdProperties {
    public int? BitsPerChannel { get; set; }

    public int? ChannelsCount { get; set; }

    public string ColorMode { get; set; }

    public string Compression { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PsdProperties {\n");
      sb.Append("  BitsPerChannel: ").Append(BitsPerChannel).Append("\n");
      sb.Append("  ChannelsCount: ").Append(ChannelsCount).Append("\n");
      sb.Append("  ColorMode: ").Append(ColorMode).Append("\n");
      sb.Append("  Compression: ").Append(Compression).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
