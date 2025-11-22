package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public interface p {

    /* renamed from: i, reason: collision with root package name */
    public static final u f3668i = new u();

    /* renamed from: o, reason: collision with root package name */
    public static final n f3669o = new n();

    /* renamed from: u, reason: collision with root package name */
    public static final h f3670u = new h("continue");
    public static final h J = new h("break");
    public static final h Q = new h("return");
    public static final g S = new g(Boolean.TRUE);
    public static final g U = new g(Boolean.FALSE);
    public static final t W = new t("");

    p d();

    String h();

    Double i();

    Boolean l();

    Iterator<p> o();

    p w(String str, s3 s3Var, ArrayList arrayList);
}
