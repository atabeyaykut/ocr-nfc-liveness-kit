package io.realm.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f7649a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final o f7650b;

    /* renamed from: c, reason: collision with root package name */
    public final OsSchemaInfo f7651c;

    public b(o oVar, OsSchemaInfo osSchemaInfo) {
        new HashMap();
        this.f7650b = oVar;
        this.f7651c = osSchemaInfo;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ColumnIndices[");
        boolean z10 = false;
        for (Map.Entry entry : this.f7649a.entrySet()) {
            if (z10) {
                sb2.append(",");
            }
            sb2.append(((Class) entry.getKey()).getSimpleName());
            sb2.append("->");
            sb2.append(entry.getValue());
            z10 = true;
        }
        sb2.append("]");
        return sb2.toString();
    }
}
