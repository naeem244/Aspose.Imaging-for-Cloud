using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class BmpProperties {
    public string Compression { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class BmpProperties {\n");
      sb.Append("  Compression: ").Append(Compression).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
