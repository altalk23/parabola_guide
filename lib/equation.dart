import 'dart:core';
import 'dart:math';

const int precision = 1;

extension on double {
    double roundPrecision(int precision) {
        return (this * pow(10, precision)).round() / pow(10, precision);
    }
}

enum EquationType {
    standard,
    vertex,
    factored,
}


class Equation {
    final double a;
    final double b;
    final double c;
    final EquationType type;
    
    
    Equation.fromStandard(this.a, this.b, this.c) : this.type = EquationType.standard;
    
    Equation.fromVertex(this.a, double h, double k)
      :
          this.type = EquationType.vertex,
          this.b = -2 * a * h,
          this.c = a * h * h + k;
    
    Equation.fromFactored(this.a, double x1, double x2)
      :
          this.type = EquationType.factored,
          this.b = -a * x1 - a * x2,
          this.c = a * x1 * x2;
    
    @override
    String toString() {
        if (type == EquationType.factored) return toFactoredString();
        if (type == EquationType.vertex) return toVertexString();
        return toStandardString();
    }
    
    int degree() {
        int d = 3;
        if (a == 0)
            --d;
        else
            return d;
        if (b == 0)
            --d;
        else
            return d;
        if (c == 0)
            --d;
        else
            return d;
        return d;
    }
    
    
    String toStandardString() {
        String str = "";
        if (a.roundPrecision(precision) != 0) {
            if (this.degree() == 3)
                str += a < 0 ? "-" : "";
            else
                str += a < 0 ? "- " : "+ ";
            if (a.roundPrecision(precision).abs() != 1) str += a.roundPrecision(precision).abs().toString();
            str += "x² ";
        }
        if (b.roundPrecision(precision) != 0) {
            if (this.degree() == 2)
                str += b < 0 ? "-" : "";
            else
                str += b < 0 ? "- " : "+ ";
            if (b.roundPrecision(precision).abs() != 1) str += b.roundPrecision(precision).abs().toString();
            str += "x ";
        }
        if (c.roundPrecision(precision) != 0) {
            if (this.degree() == 1)
                str += c < 0 ? "-" : "";
            else
                str += c < 0 ? "- " : "+ ";
            str += c.roundPrecision(precision).abs().toString();
        }
        return str;
    }
    
    String toVertexString() {
        double h = 0.5 * b / a;
        double k = c - a * h * h;
        
        String str = "";
        if (a.roundPrecision(precision) != 0) {
            str += a < 0 ? "-" : "";
            if (a.roundPrecision(precision).abs() != 1) str += a.roundPrecision(precision).abs().toString();
            if (h.roundPrecision(precision) != 0) str += "(";
            str += "x";
            if (h.roundPrecision(precision) != 0) {
                str += h < 0 ? " - " : " + ";
                str += h.roundPrecision(precision).abs().toString();
                str += ")";
            }
        }
        if (k.roundPrecision(precision) != 0) {
            if (this.degree() == 1)
                str += k < 0 ? "-" : "";
            else
                str += k < 0 ? " + " : " - ";
            str += k.roundPrecision(precision).abs().toString();
        }
        return str;
    }
    
    String toFactoredString() {
        double x1 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
        double x2 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
        
        String str = "";
        if (a.roundPrecision(precision) != 0) {
            str += a < 0 ? "-" : "";
            if (a.roundPrecision(precision).abs() != 1) str += a.roundPrecision(precision).abs().toString();
            if (x1.roundPrecision(precision) != 0) str += "(";
            str += "x";
            if (x1.roundPrecision(precision) != 0) {
                str += x1 < 0 ? " + " : " - ";
                str += x1.roundPrecision(precision).abs().toString();
                str += ")";
            }
            if (x2.roundPrecision(precision) != 0) str += "(";
            str += "x";
            if (x2.roundPrecision(precision) != 0) {
                str += x2 < 0 ? " + " : " - ";
                str += x2.roundPrecision(precision).abs().toString();
                str += ")";
            }
        }
        else str += "0";
        return str;
    }
    
    
}