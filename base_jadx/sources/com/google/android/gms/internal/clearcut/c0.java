package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class c0 extends x {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f3057d;

    public c0(byte[] bArr) {
        this.f3057d = bArr;
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x) || size() != ((x) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return obj.equals(this);
        }
        c0 c0Var = (c0) obj;
        int r12 = this.f3343a;
        int r32 = c0Var.f3343a;
        if (r12 != 0 && r32 != 0 && r12 != r32) {
            return false;
        }
        int size = size();
        if (size > c0Var.size()) {
            int size2 = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(size);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (size > c0Var.size()) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.e(59, "Ran off end of other: 0, ", size, ", ", c0Var.size()));
        }
        int r22 = x() + size;
        int r13 = x();
        int r33 = c0Var.x();
        while (r13 < r22) {
            if (this.f3057d[r13] != c0Var.f3057d[r33]) {
                return false;
            }
            r13++;
            r33++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public final int h(int r42, int r52) {
        int r02 = x();
        Charset charset = x0.f3344a;
        for (int r12 = r02; r12 < r02 + r52; r12++) {
            r42 = (r42 * 31) + this.f3057d[r12];
        }
        return r42;
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public final String l(Charset charset) {
        return new String(this.f3057d, x(), size(), charset);
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public final void m(w wVar) throws IOException {
        wVar.a(this.f3057d, x(), size());
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public final boolean o() {
        int r02 = x();
        return i3.c(this.f3057d, r02, size() + r02);
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public int size() {
        return this.f3057d.length;
    }

    @Override // com.google.android.gms.internal.clearcut.x
    public byte w(int r22) {
        return this.f3057d[r22];
    }

    public int x() {
        return 0;
    }
}
