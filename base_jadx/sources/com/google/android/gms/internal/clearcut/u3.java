package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.u3;
import java.io.IOException;

/* loaded from: classes.dex */
public class u3<M extends u3<M>> extends y3 {

    /* renamed from: b, reason: collision with root package name */
    public v3 f3322b;

    @Override // com.google.android.gms.internal.clearcut.y3
    public int d() {
        if (this.f3322b != null) {
            int r02 = 0;
            while (true) {
                v3 v3Var = this.f3322b;
                if (r02 >= v3Var.f3332c) {
                    break;
                }
                v3Var.f3331b[r02].c();
                r02++;
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.y3
    /* renamed from: e */
    public /* synthetic */ y3 clone() throws CloneNotSupportedException {
        return (u3) clone();
    }

    public void f(s3 s3Var) throws IOException {
        if (this.f3322b == null) {
            return;
        }
        int r32 = 0;
        while (true) {
            v3 v3Var = this.f3322b;
            if (r32 >= v3Var.f3332c) {
                return;
            }
            v3Var.f3331b[r32].b();
            r32++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.y3
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public M clone() throws CloneNotSupportedException {
        M m10 = (M) super.clone();
        Object obj = x3.f3347a;
        v3 v3Var = this.f3322b;
        if (v3Var != null) {
            m10.f3322b = (v3) v3Var.clone();
        }
        return m10;
    }
}
