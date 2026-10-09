// Kilo-Walk icon generator v2 — "monkey reading a book" theme.
//
// Renders:
//   assets/images/icon.png                1024 rounded-square launcher icon
//   assets/images/adaptive_foreground.png 1024 transparent adaptive layer
//   assets/images/adaptive_background.png 1024 gradient adaptive layer
//   assets/images/notification_icon.png   512 white-alpha status silhouette
//   assets/images/tray_icon_linux.png     512 color tray icon
//   assets/images/tray_icon_macos_template.png 512 black-alpha template
//   android drawable ic_stat_codewalk densities (24/36/48/72/96)
//
// Style: flat geometric — warm brown monkey, cream open book, youthful
// sky-blue gradient background.
// Run: dart run tool/gen_kilo_walk_icon.dart

import 'dart:io';
import 'dart:math' as math;
import 'package:image/image.dart';

const int size = 1024;
const int ss = 4;
const int big = size * ss;

class Pt {
  const Pt(this.x, this.y);
  final double x;
  final double y;
  Pt scaleAbout(double s, Pt c) => Pt(c.x + (x - c.x) * s, c.y + (y - c.y) * s);
}

class RGBA {
  const RGBA(this.r, this.g, this.b, this.a);
  final int r, g, b, a;
  static const RGBA transparent = RGBA(0, 0, 0, 0);
}

// Palette ---------------------------------------------------------------
const monkeyBrown = RGBA(0x8C, 0x5A, 0x3C, 255);
const monkeyTan = RGBA(0xD9, 0xAE, 0x86, 255);
const inkDark = RGBA(0x24, 0x16, 0x10, 255);
const bookCover = RGBA(0x6B, 0x44, 0x23, 255);
const pageCream = RGBA(0xFF, 0xF6, 0xE8, 255);
const pageLine = RGBA(0xC8, 0x9B, 0x7B, 255);
const white = RGBA(255, 255, 255, 255);
const black = RGBA(0, 0, 0, 255);

(int, int, int) gradientAt(double x, double y) {
  final t = ((0.78 * y + 0.22 * x) / size).clamp(0.0, 1.0);
  // Youthful sky: sky-400 -> blue-600 (bright, energetic).
  final r = (0x38 + (0x25 - 0x38) * t).round();
  final g = (0xBD + (0x63 - 0xBD) * t).round();
  final b = (0xF8 + (0xEB - 0xF8) * t).round();
  return (r, g, b);
}

// Geometry --------------------------------------------------------------
typedef Shape = (List<Pt>, RGBA);

List<Shape> buildComposition({required bool detail, RGBA? mono}) {
  RGBA c(RGBA base) => mono ?? base;
  final face = <Shape>[];
  final book = <Shape>[];

  // --- Face group (drawn first, chin falls behind the book) ---
  // Ears.
  face.add((ellipsePoly(const Pt(286, 424), 92, 92), c(monkeyBrown)));
  face.add((ellipsePoly(const Pt(738, 424), 92, 92), c(monkeyBrown)));
  if (detail) {
    face.add((ellipsePoly(const Pt(286, 424), 54, 54), monkeyTan));
    face.add((ellipsePoly(const Pt(738, 424), 54, 54), monkeyTan));
  }
  // Head.
  face.add((ellipsePoly(const Pt(512, 424), 248, 242), c(monkeyBrown)));
  // Face patches: brow + muzzle.
  face.add((ellipsePoly(const Pt(512, 396), 150, 128), c(monkeyTan)));
  face.add((ellipsePoly(const Pt(512, 500), 178, 136), c(monkeyTan)));
  if (detail) {
    // Eyes.
    face.add((ellipsePoly(const Pt(448, 414), 27, 30), inkDark));
    face.add((ellipsePoly(const Pt(576, 414), 27, 30), inkDark));
    // Nostrils.
    face.add((ellipsePoly(const Pt(492, 472), 10, 8), inkDark));
    face.add((ellipsePoly(const Pt(532, 472), 10, 8), inkDark));
    // Smile: dots along a downward arc.
    for (var t = 0.32; t <= 0.68; t += 0.045) {
      final a = math.pi * t;
      final px = 512 + 66 * math.cos(a);
      final py = 458 + 66 * math.sin(a);
      face.add((ellipsePoly(Pt(px, py), 8, 8), inkDark));
    }
  }

  // --- Book group (drawn over the face, chin behind pages) ---
  book.add((
    [const Pt(512, 586), const Pt(512, 776), const Pt(282, 726), const Pt(282, 556)],
    c(bookCover),
  ));
  book.add((
    [const Pt(512, 586), const Pt(512, 776), const Pt(742, 726), const Pt(742, 556)],
    c(bookCover),
  ));
  book.add((
    [const Pt(512, 602), const Pt(512, 758), const Pt(302, 714), const Pt(302, 572)],
    c(pageCream),
  ));
  book.add((
    [const Pt(512, 602), const Pt(512, 758), const Pt(722, 714), const Pt(722, 572)],
    c(pageCream),
  ));
  if (detail) {
    for (final side in [-1, 1]) {
      for (final dy in [34.0, 68.0, 102.0]) {
        final x0 = 512.0 + side * 40;
        final x1 = 512.0 + side * 176;
        final y0 = 618 + dy;
        final y1 = 600 + dy * 0.92;
        book.add((
          [Pt(x0, y0), Pt(x1, y1), Pt(x1, y1 + 9), Pt(x0, y0 + 9)],
          mono ?? pageLine,
        ));
      }
    }
  }

  // --- Hands gripping the book (top-most) ---
  final hands = <Shape>[
    (ellipsePoly(const Pt(312, 700), 46, 46), c(monkeyBrown)),
    (ellipsePoly(const Pt(712, 700), 46, 46), c(monkeyBrown)),
  ];

  return [...face, ...book, ...hands];
}

List<Pt> ellipsePoly(Pt c, double rx, double ry, [int steps = 48]) {
  return List.generate(steps, (i) {
    final a = 2 * math.pi * i / steps;
    return Pt(c.x + rx * math.cos(a), c.y + ry * math.sin(a));
  });
}

// Rasterizer ------------------------------------------------------------
void fillPolygonMask(List<Pt> poly, List<double> mask) {
  double minY = double.infinity, maxY = double.negativeInfinity;
  for (final p in poly) {
    minY = math.min(minY, p.y);
    maxY = math.max(maxY, p.y);
  }
  final y0 = math.max(0, (minY * ss).ceil());
  final y1 = math.min(big - 1, (maxY * ss).floor());
  final xs = <double>[];
  for (var y = y0; y <= y1; y++) {
    final py = y / ss;
    xs.clear();
    for (var i = 0; i < poly.length; i++) {
      final a = poly[i];
      final b = poly[(i + 1) % poly.length];
      if ((a.y <= py && b.y > py) || (b.y <= py && a.y > py)) {
        xs.add(a.x + (py - a.y) / (b.y - a.y) * (b.x - a.x));
      }
    }
    xs.sort();
    for (var k = 0; k + 1 < xs.length; k += 2) {
      final xa = math.max(0, (xs[k] * ss).ceil());
      final xb = math.min(big - 1, (xs[k + 1] * ss).floor());
      final row = y * big;
      for (var x = xa; x <= xb; x++) {
        mask[row + x] = 1.0;
      }
    }
  }
}

/// Rasterize one shape's polygon (already scaled) into an alpha layer.
List<double> rasterize(List<Pt> poly) {
  final mask = List<double>.filled(big * big, 0.0);
  fillPolygonMask(poly, mask);
  final out = List<double>.filled(size * size, 0.0);
  const area = ss * ss;
  for (var y = 0; y < size; y++) {
    for (var x = 0; x < size; x++) {
      var acc = 0.0;
      for (var j = 0; j < ss; j++) {
        final row = (y * ss + j) * big;
        for (var i = 0; i < ss; i++) {
          acc += mask[row + x * ss + i];
        }
      }
      out[y * size + x] = acc / area;
    }
  }
  return out;
}

/// Render the composition onto a canvas.
/// [bgMode]: 'rounded' | 'full' | 'none'; [fgScale] scales glyph; [mono]
/// forces a single color silhouette (skips detail layers' colors).
Image render({
  required String bgMode,
  double fgScale = 1.0,
  RGBA? mono,
  bool detail = true,
  bool skipGlyph = false,
}) {
  final img = Image(width: size, height: size);
  const center = Pt(512, 512);
  final layers = <(List<double>, RGBA)>[];
  if (!skipGlyph) {
    final shapes = buildComposition(detail: detail, mono: mono);
    for (final (poly, color) in shapes) {
      final scaled = poly.map((p) => p.scaleAbout(fgScale, center)).toList();
      layers.add((rasterize(scaled), color));
    }
  }

  for (var y = 0; y < size; y++) {
    for (var x = 0; x < size; x++) {
      var r = 0, g = 0, b = 0, a = 0;
      var hasBg = false;
      if (bgMode == 'rounded') {
        const rad = 232.0;
        final cx = x < rad ? rad : (x > size - rad ? size - rad : x);
        final cy = y < rad ? rad : (y > size - rad ? size - rad : y);
        final dx = x - cx, dy = y - cy;
        if (dx * dx + dy * dy <= rad * rad) {
          (r, g, b) = gradientAt(x + 0.0, y + 0.0);
          a = 255;
          hasBg = true;
        }
      } else if (bgMode == 'full') {
        (r, g, b) = gradientAt(x + 0.0, y + 0.0);
        a = 255;
        hasBg = true;
      }
      // Composite shapes in order (painter's algorithm).
      for (final (alpha, color) in layers) {
        final cov = alpha[y * size + x];
        if (cov <= 0) continue;
        final ca = color.a * cov;
        // Standard source-over.
        final sa = ca / 255.0;
        final outA = sa + (a / 255.0) * (1 - sa);
        if (outA <= 0) continue;
        r = (((color.r * sa) + (r * (a / 255.0) * (1 - sa))) / outA).round();
        g = (((color.g * sa) + (g * (a / 255.0) * (1 - sa))) / outA).round();
        b = (((color.b * sa) + (b * (a / 255.0) * (1 - sa))) / outA).round();
        a = (outA * 255).round();
      }
      if (a > 0) {
        img.setPixelRgba(x, y, r, g, b, a);
      }
    }
  }
  return img;
}

/// Box-filter downscale of an RGBA image to a smaller square.
Image downscaleTo(Image src, int dim) {
  final out = Image(width: dim, height: dim);
  final factor = src.width / dim;
  for (var y = 0; y < dim; y++) {
    for (var x = 0; x < dim; x++) {
      var r = 0.0, g = 0.0, b = 0.0, a = 0.0;
      final x0 = (x * factor).floor(), y0 = (y * factor).floor();
      final x1 = ((x + 1) * factor).ceil(), y1 = ((y + 1) * factor).ceil();
      var n = 0;
      for (var j = y0; j < y1 && j < src.height; j++) {
        for (var i = x0; i < x1 && i < src.width; i++) {
          final p = src.getPixel(i, j);
          r += p.r; g += p.g; b += p.b; a += p.a; n++;
        }
      }
      if (n == 0) n = 1;
      out.setPixelRgba(
        x, y, (r / n).round(), (g / n).round(), (b / n).round(), (a / n).round(),
      );
    }
  }
  return out;
}

void writePng(String path, Image img) {
  File(path).writeAsBytesSync(encodePng(img));
  stdout.writeln('wrote $path (${img.width}x${img.height})');
}

void main() {
  // 1) Launcher icon: rounded gradient + detailed monkey.
  writePng('assets/images/icon.png', render(bgMode: 'rounded'));

  // 2) Adaptive layers.
  writePng(
    'assets/images/adaptive_foreground.png',
    render(bgMode: 'none', fgScale: 0.62),
  );
  writePng('assets/images/adaptive_background.png',
      render(bgMode: 'full', skipGlyph: true));

  // 3) Notification silhouette: white alpha, no details.
  final sil = render(bgMode: 'none', fgScale: 0.92, mono: white, detail: false);
  writePng('assets/images/notification_icon.png', sil);
  for (final entry in [24, 36, 48, 72, 96]) {
    final dirs = {
      24: 'mdpi', 36: 'hdpi', 48: 'xhdpi', 72: 'xxhdpi', 96: 'xxxhdpi',
    };
    writePng(
      'android/app/src/main/res/drawable-${dirs[entry]}/ic_stat_codewalk.png',
      downscaleTo(sil, entry),
    );
  }

  // 4) Tray icons.
  writePng('assets/images/tray_icon_linux.png',
      downscaleTo(render(bgMode: 'none', fgScale: 0.94), 512));
  writePng(
    'assets/images/tray_icon_macos_template.png',
    downscaleTo(render(bgMode: 'none', fgScale: 0.94, mono: black, detail: false), 512),
  );
}
