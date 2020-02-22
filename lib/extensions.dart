const String superscripts = '⁰¹²³⁴⁵⁶⁷⁸⁹';

extension AddDegree on String {
    String addXDegree(int degree) {
        if (degree == 0) return this;
        else if (degree == 1) return this + 'x';
        else return this + 'x' + degree.toSuperscriptString();
    }

    String addDegree(int degree) {
        if (degree == 0) return '1';
        else if (degree == 1) return this;
        else return this + degree.toSuperscriptString();
    }
}

extension Superscript on int {
    String toSuperscriptString() {
        List<String> normal = this.toString().split('');
        StringBuffer buffer = StringBuffer();
        normal.forEach((element) {
            buffer.write(superscripts[int.parse(element)]);
        });
        return buffer.toString();
    }
}

extension Factoring on double {
    String factorString() {
        if (this == 0) return 'x';
        else if (this > 0) return '(x - ${this.abs()})';
        else if (this < 0) return '(x + ${this.abs()})';
    }
    
    String coefficentString() {
        if (this == 0) return '';
        if (this.abs() == 1) return this < 0 ? '-' : '';
        else return '${this}';
    }
    
    String continueCoefficentString() {
        if (this == 0) return '';
        if (this.abs() == 1) return this < 0 ? ' - ' : ' + ';
        else return (this < 0 ? ' - ' : ' + ') + '${this.abs()}';
    }
    
    String constantString() {
        if (this == 0) return '';
        return (this < 0 ? ' - ' : ' + ') + '${this.abs()}';
    }
}