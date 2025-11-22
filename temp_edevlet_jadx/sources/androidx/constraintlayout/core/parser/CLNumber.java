package androidx.constraintlayout.core.parser;

import android.support.v4.media.a;

/* loaded from: classes.dex */
public class CLNumber extends CLElement {
    float value;

    public CLNumber(float f) {
        super(null);
        this.value = f;
    }

    public CLNumber(char[] cArr) {
        super(cArr);
        this.value = Float.NaN;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLNumber(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public float getFloat() {
        if (Float.isNaN(this.value)) {
            this.value = Float.parseFloat(content());
        }
        return this.value;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int getInt() {
        if (Float.isNaN(this.value)) {
            this.value = Integer.parseInt(content());
        }
        return (int) this.value;
    }

    public boolean isInt() {
        float f = getFloat();
        return ((float) ((int) f)) == f;
    }

    public void putValue(float f) {
        this.value = f;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int r32, int r42) {
        StringBuilder sb2 = new StringBuilder();
        addIndent(sb2, r32);
        float f = getFloat();
        int r02 = (int) f;
        if (r02 == f) {
            sb2.append(r02);
        } else {
            sb2.append(f);
        }
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        float f = getFloat();
        int r12 = (int) f;
        if (r12 == f) {
            return a.d("", r12);
        }
        return "" + f;
    }
}
