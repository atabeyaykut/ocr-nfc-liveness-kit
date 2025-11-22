package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes2.dex */
class MaxInputValidator implements InputFilter {
    private int max;

    public MaxInputValidator(int r12) {
        this.max = r12;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int r32, int r42, Spanned spanned, int r6, int r72) {
        try {
            StringBuilder sb2 = new StringBuilder(spanned);
            sb2.replace(r6, r72, charSequence.subSequence(r32, r42).toString());
            if (Integer.parseInt(sb2.toString()) <= this.max) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    public int getMax() {
        return this.max;
    }

    public void setMax(int r12) {
        this.max = r12;
    }
}
