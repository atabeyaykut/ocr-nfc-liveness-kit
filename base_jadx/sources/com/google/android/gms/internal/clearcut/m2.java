package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Field;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class m2 {
    public Object A;

    /* renamed from: a, reason: collision with root package name */
    public final n2 f3184a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f3185b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<?> f3186c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3187d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3188e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3189g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3190h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3191i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3192j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3193k;

    /* renamed from: l, reason: collision with root package name */
    public final int f3194l;

    /* renamed from: m, reason: collision with root package name */
    public final int[] f3195m;

    /* renamed from: n, reason: collision with root package name */
    public int f3196n;

    /* renamed from: o, reason: collision with root package name */
    public int f3197o;

    /* renamed from: p, reason: collision with root package name */
    public int f3198p = Integer.MAX_VALUE;

    /* renamed from: q, reason: collision with root package name */
    public int f3199q = Integer.MIN_VALUE;

    /* renamed from: r, reason: collision with root package name */
    public int f3200r = 0;

    /* renamed from: s, reason: collision with root package name */
    public int f3201s;

    /* renamed from: t, reason: collision with root package name */
    public int f3202t;

    /* renamed from: u, reason: collision with root package name */
    public int f3203u;

    /* renamed from: v, reason: collision with root package name */
    public int f3204v;
    public int w;

    /* renamed from: x, reason: collision with root package name */
    public Field f3205x;

    /* renamed from: y, reason: collision with root package name */
    public Object f3206y;

    /* renamed from: z, reason: collision with root package name */
    public Object f3207z;

    public m2(Class<?> cls, String str, Object[] objArr) {
        this.f3186c = cls;
        n2 n2Var = new n2(str);
        this.f3184a = n2Var;
        this.f3185b = objArr;
        this.f3187d = n2Var.a();
        int r42 = n2Var.a();
        this.f3188e = r42;
        if (r42 == 0) {
            this.f = 0;
            this.f3189g = 0;
            this.f3190h = 0;
            this.f3191i = 0;
            this.f3193k = 0;
            this.f3192j = 0;
            this.f3194l = 0;
            this.f3195m = null;
            return;
        }
        int r43 = n2Var.a();
        this.f = r43;
        int r02 = n2Var.a();
        this.f3189g = n2Var.a();
        this.f3190h = n2Var.a();
        this.f3193k = n2Var.a();
        this.f3192j = n2Var.a();
        this.f3191i = n2Var.a();
        this.f3194l = n2Var.a();
        int r32 = n2Var.a();
        this.f3195m = r32 != 0 ? new int[r32] : null;
        this.f3196n = (r43 << 1) + r02;
    }

    public static Field b(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + name.length() + String.valueOf(str).length() + 40);
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            throw new RuntimeException(androidx.camera.camera2.internal.c.h(sb2, " not found. Known fields are ", string));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.m2.a():boolean");
    }

    public final Object c() {
        int r02 = this.f3196n;
        this.f3196n = r02 + 1;
        return this.f3185b[r02];
    }
}
