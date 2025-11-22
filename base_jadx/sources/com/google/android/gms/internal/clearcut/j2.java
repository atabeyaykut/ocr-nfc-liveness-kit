package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class j2 {

    /* renamed from: c, reason: collision with root package name */
    public static final j2 f3165c = new j2();

    /* renamed from: a, reason: collision with root package name */
    public final p2 f3166a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f3167b = new ConcurrentHashMap();

    public j2() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        p2 p2Var = null;
        for (int r32 = 0; r32 <= 0; r32++) {
            try {
                p2Var = (p2) Class.forName(strArr[0]).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused) {
                p2Var = null;
            }
            if (p2Var != null) {
                break;
            }
        }
        this.f3166a = p2Var == null ? new o1() : p2Var;
    }

    public final <T> o2<T> a(Class<T> cls) {
        Charset charset = x0.f3344a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f3167b;
        o2<T> o2Var = (o2) concurrentHashMap.get(cls);
        if (o2Var != null) {
            return o2Var;
        }
        o2<T> o2VarA = this.f3166a.a(cls);
        if (o2VarA == null) {
            throw new NullPointerException("schema");
        }
        o2<T> o2Var2 = (o2) concurrentHashMap.putIfAbsent(cls, o2VarA);
        return o2Var2 != null ? o2Var2 : o2VarA;
    }
}
