// Kilo-Walk app icon generator (icon-as-code).
//
// Renders:
//   assets/images/icon.png               1024 rounded-square, gradient + glyph
//   assets/images/adaptive_foreground.png  1024 transparent, glyph at safe zone
//   assets/images/adaptive_background.png  1024 full-bleed gradient
//
// Design: leaning geometric "K" (forward motion) + fading footstep trail,
// deep-indigo to cyan diagonal gradient. Supersampled 4x for smooth edges.
//
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
}

Pt shear(Pt p) => Pt(p.x + 0.13 * (512 - p.y), p.y);

List<Pt> quadFromSegment(Pt a, Pt b, double w) {
  final dx = b.x - a.x, dy = b.y - a.y;
  final len = math.sqrt(dx * dx + dy * dy);
  final nx = -dy / len * (w / 2), ny = dx / len * (w / 2);
  return [
    shear(Pt(a.x + nx, a.y + ny)),
    shear(Pt(b.x + nx, b.y + ny)),
    shear(Pt(b.x - nx, b.y - ny)),
    shear(Pt(a.x - nx, a.y - ny)),
  ];
}

/// Scanline polygon coverage into a supersampled mask.
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
      final x0 = math.max(0, (xs[k] * ss).ceil());
      final x1 = math.min(big - 1, (xs[k + 1] * ss).floor());
      final row = y * big;
      for (var x = x0; x <= x1; x++) {
        mask[row + x] = 1.0;
      }
    }
  }
}

/// Downsample a supersampled mask by ss x ss box filter -> alpha 0..1 per px.
List<double> downsample(List<double> mask) {
  final out = List<double>.filled(size * size, 0.0);
  final area = ss * ss;
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

int lerpChannel(int a, int b, double t) => (a + (b - a) * t).round();

/// Diagonal gradient sample: indigo-950 -> indigo-700 -> cyan-600.
(int, int, int) gradientAt(double x, double y) {
  final t = ((0.78 * y + 0.22 * x) / size).clamp(0.0, 1.0);
  if (t < 0.55) {
    final u = t / 0.55;
    return (
      lerpChannel(0x1E, 0x43, u),
      lerpChannel(0x1B, 0x38, u),
      lerpChannel(0x4B, 0xCA, u),
    );
  }
  final u = (t - 0.55) / 0.45;
  return (
    lerpChannel(0x43, 0x08, u),
    lerpChannel(0x38, 0x91, u),
    lerpChannel(0xCA, 0xB2, u),
  );
}

const cornerRadius = 232.0;

bool insideRounded(double x, double y) {
  final r = cornerRadius;
  final cx = x < r ? r : (x > size - r ? size - r : x);
  final cy = y < r ? r : (y > size - r ? size - r : y);
  final dx = x - cx, dy = y - cy;
  return dx * dx + dy * dy <= r * r;
}

void writePng(String path, Image img) {
  File(path).writeAsBytesSync(encodePng(img));
  stdout.writeln('wrote $path');
}

void main() {
  // Glyph strokes: leaning geometric K.
  final strokes = [
    quadFromSegment(const Pt(300, 240), const Pt(300, 784), 112), // stem
    quadFromSegment(const Pt(300, 556), const Pt(664, 240), 104), // arm
    quadFromSegment(const Pt(452, 512), const Pt(704, 784), 104), // leg
  ];
  final mask = List<double>.filled(big * big, 0.0);
  for (final s in strokes) {
    fillPolygonMask(s, mask);
  }
  final glyphAlpha = downsample(mask);

  // Footstep trail: analytic anti-aliased circles.
  final trail = <(double, double, double, double)>[
    (208, 668, 30, 0.34),
    (162, 740, 24, 0.22),
    (128, 800, 19, 0.13),
  ];
  double trailAlphaAt(double x, double y) {
    var a = 0.0;
    for (final (cx, cy, r, op) in trail) {
      final d = math.sqrt((x - cx) * (x - cx) + (y - cy) * (y - cy));
      final cov = (r - d).clamp(-0.5, 0.5) + 0.5;
      if (cov > 0) a = math.max(a, op * cov);
    }
    return a;
  }

  // 1) Main icon: rounded gradient + glyph + trail.
  final icon = Image(width: size, height: size);
  for (var y = 0; y < size; y++) {
    for (var x = 0; x < size; x++) {
      final px = x + 0.0, py = y + 0.0;
      var r = 0, g = 0, b = 0;
      var a = 0;
      if (insideRounded(px, py)) {
        (r, g, b) = gradientAt(px, py);
        a = 255;
      }
      final ga = math.max(glyphAlpha[y * size + x], trailAlphaAt(px, py));
      if (ga > 0) {
        r = lerpChannel(r, 255, ga);
        g = lerpChannel(g, 255, ga);
        b = lerpChannel(b, 255, ga);
        if (a == 0 && ga > 0) a = (255 * ga).round();
      }
      icon.setPixelRgba(x, y, r, g, b, a);
    }
  }
  writePng('assets/images/icon.png', icon);

  // 2) Adaptive foreground: transparent, glyph scaled to the 62% safe zone.
  final fg = Image(width: size, height: size);
  final sMask = List<double>.filled(big * big, 0.0);
  const shrink = 0.62;
  Pt scale(Pt p) => Pt(512 + (p.x - 512) * shrink, 512 + (p.y - 512) * shrink);
  final scaledStrokes = strokes
      .map((poly) => poly.map(scale).toList(growable: false))
      .toList();
  for (final s in scaledStrokes) {
    fillPolygonMask(s, sMask);
  }
  final sAlpha = downsample(sMask);
  for (var y = 0; y < size; y++) {
    for (var x = 0; x < size; x++) {
      final ga = sAlpha[y * size + x];
      if (ga > 0) {
        fg.setPixelRgba(x, y, 255, 255, 255, (255 * ga).round());
      } else {
        fg.setPixelRgba(x, y, 0, 0, 0, 0);
      }
    }
  }
  writePng('assets/images/adaptive_foreground.png', fg);

  // 3) Adaptive background: full-bleed gradient.
  final bg = Image(width: size, height: size);
  for (var y = 0; y < size; y++) {
    for (var x = 0; x < size; x++) {
      final (r, g, b) = gradientAt(x + 0.0, y + 0.0);
      bg.setPixelRgba(x, y, r, g, b, 255);
    }
  }
  writePng('assets/images/adaptive_background.png', bg);
}
