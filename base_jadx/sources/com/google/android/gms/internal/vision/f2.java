package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class f2 {

    /* renamed from: b, reason: collision with root package name */
    public static final e2 f3952b = new e2();

    /* renamed from: a, reason: collision with root package name */
    public final o2 f3953a;

    public f2() {
        o2 o2Var;
        o2[] o2VarArr = new o2[2];
        o2VarArr[0] = j1.f4017a;
        try {
            o2Var = (o2) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            o2Var = f3952b;
        }
        o2VarArr[1] = o2Var;
        h2 h2Var = new h2(o2VarArr);
        Charset charset = m1.f4035a;
        this.f3953a = h2Var;
    }
}
