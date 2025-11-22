package ed;

import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5325a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5326b;

    /* renamed from: c, reason: collision with root package name */
    public final z f5327c;

    /* renamed from: d, reason: collision with root package name */
    public final Long f5328d;

    /* renamed from: e, reason: collision with root package name */
    public final Long f5329e;
    public final Long f;

    /* renamed from: g, reason: collision with root package name */
    public final Long f5330g;

    /* renamed from: h, reason: collision with root package name */
    public final Map<da.d<?>, Object> f5331h;

    public /* synthetic */ j(boolean z10, boolean z11, z zVar, Long l5, Long l10, Long l11, Long l12) {
        this(z10, z11, zVar, l5, l10, l11, l12, m9.w.f10174a);
    }

    public j(boolean z10, boolean z11, z zVar, Long l5, Long l10, Long l11, Long l12, Map<da.d<?>, ? extends Object> extras) {
        kotlin.jvm.internal.h.f(extras, "extras");
        this.f5325a = z10;
        this.f5326b = z11;
        this.f5327c = zVar;
        this.f5328d = l5;
        this.f5329e = l10;
        this.f = l11;
        this.f5330g = l12;
        this.f5331h = m9.e0.T0(extras);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.f5325a) {
            arrayList.add("isRegularFile");
        }
        if (this.f5326b) {
            arrayList.add("isDirectory");
        }
        Long l5 = this.f5328d;
        if (l5 != null) {
            arrayList.add(kotlin.jvm.internal.h.k(l5, "byteCount="));
        }
        Long l10 = this.f5329e;
        if (l10 != null) {
            arrayList.add(kotlin.jvm.internal.h.k(l10, "createdAt="));
        }
        Long l11 = this.f;
        if (l11 != null) {
            arrayList.add(kotlin.jvm.internal.h.k(l11, "lastModifiedAt="));
        }
        Long l12 = this.f5330g;
        if (l12 != null) {
            arrayList.add(kotlin.jvm.internal.h.k(l12, "lastAccessedAt="));
        }
        Map<da.d<?>, Object> map = this.f5331h;
        if (!map.isEmpty()) {
            arrayList.add(kotlin.jvm.internal.h.k(map, "extras="));
        }
        return m9.t.g1(arrayList, ", ", "FileMetadata(", ")", null, 56);
    }
}
