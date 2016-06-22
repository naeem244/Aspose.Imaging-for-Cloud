using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Imaging.Model {
  public class ImagingResponse {
    public int? Height { get; set; }

    public int? Width { get; set; }

    public int? BitsPerPixel { get; set; }

    public BmpProperties BmpProperties { get; set; }

    public GifProperties GifProperties { get; set; }

    public JpegProperties JpegProperties { get; set; }

    public PngProperties PngProperties { get; set; }

    public TiffProperties TiffProperties { get; set; }

    public PsdProperties PsdProperties { get; set; }

    public double? HorizontalResolution { get; set; }

    public double? VerticalResolution { get; set; }

    public bool? IsCached { get; set; }

    public string Code { get; set; }

    public string Status { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ImagingResponse {\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  Width: ").Append(Width).Append("\n");
      sb.Append("  BitsPerPixel: ").Append(BitsPerPixel).Append("\n");
      sb.Append("  BmpProperties: ").Append(BmpProperties).Append("\n");
      sb.Append("  GifProperties: ").Append(GifProperties).Append("\n");
      sb.Append("  JpegProperties: ").Append(JpegProperties).Append("\n");
      sb.Append("  PngProperties: ").Append(PngProperties).Append("\n");
      sb.Append("  TiffProperties: ").Append(TiffProperties).Append("\n");
      sb.Append("  PsdProperties: ").Append(PsdProperties).Append("\n");
      sb.Append("  HorizontalResolution: ").Append(HorizontalResolution).Append("\n");
      sb.Append("  VerticalResolution: ").Append(VerticalResolution).Append("\n");
      sb.Append("  IsCached: ").Append(IsCached).Append("\n");
      sb.Append("  Code: ").Append(Code).Append("\n");
      sb.Append("  Status: ").Append(Status).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
