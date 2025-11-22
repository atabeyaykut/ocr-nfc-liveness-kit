package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, Object> f2722a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f2723a = new HashMap();
    }

    public i(a aVar) {
        this.f2722a = Collections.unmodifiableMap(new HashMap(aVar.f2723a));
    }
}
