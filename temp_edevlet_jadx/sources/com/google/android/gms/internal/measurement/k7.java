package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class k7 {

    /* renamed from: b, reason: collision with root package name */
    public static final i7 f3599b = new i7();

    /* renamed from: a, reason: collision with root package name */
    public final j7 f3600a;

    public k7() {
        r7 r7Var;
        r7[] r7VarArr = new r7[2];
        r7VarArr[0] = m6.f3628a;
        try {
            r7Var = (r7) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            r7Var = f3599b;
        }
        r7VarArr[1] = r7Var;
        j7 j7Var = new j7(r7VarArr);
        Charset charset = x6.f3835a;
        this.f3600a = j7Var;
    }
}
