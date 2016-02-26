using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class JfifData {
    public string DensityUnits { get; set; }

    public int? Version { get; set; }

    public int? XDensity { get; set; }

    public int? YDensity { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class JfifData {\n");
      sb.Append("  DensityUnits: ").Append(DensityUnits).Append("\n");
      sb.Append("  Version: ").Append(Version).Append("\n");
      sb.Append("  XDensity: ").Append(XDensity).Append("\n");
      sb.Append("  YDensity: ").Append(YDensity).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
