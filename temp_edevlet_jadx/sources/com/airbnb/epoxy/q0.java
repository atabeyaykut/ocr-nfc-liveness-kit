package com.airbnb.epoxy;

import androidx.annotation.Nullable;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class q0 {

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f2613b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public u<?> f2614a;

    public static int a(u<?> uVar) {
        int viewType = uVar.getViewType();
        if (viewType != 0) {
            return viewType;
        }
        Class<?> cls = uVar.getClass();
        HashMap map = f2613b;
        Integer numValueOf = (Integer) map.get(cls);
        if (numValueOf == null) {
            numValueOf = Integer.valueOf((-map.size()) - 1);
            map.put(cls, numValueOf);
        }
        return numValueOf.intValue();
    }
}
