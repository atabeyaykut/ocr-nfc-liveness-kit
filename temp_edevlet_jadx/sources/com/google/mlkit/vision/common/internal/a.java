package com.google.mlkit.vision.common.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import r3.r;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4436a = new HashMap();

    /* renamed from: com.google.mlkit.vision.common.internal.a$a, reason: collision with other inner class name */
    public static class C0066a {
    }

    public a(Set<C0066a> set) {
        HashMap map = new HashMap();
        Iterator<C0066a> it = set.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (this.f4436a.containsKey(null)) {
                Integer num = (Integer) map.get(null);
                r.i(num);
                if (num.intValue() <= 0) {
                }
            }
            this.f4436a.put(null, null);
            map.put(null, 0);
        }
    }
}
