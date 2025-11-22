package yb;

import ma.r0;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final ib.c f19416a;

    /* renamed from: b, reason: collision with root package name */
    public final gb.b f19417b;

    /* renamed from: c, reason: collision with root package name */
    public final ib.a f19418c;

    /* renamed from: d, reason: collision with root package name */
    public final r0 f19419d;

    public h(ib.c nameResolver, gb.b classProto, ib.a metadataVersion, r0 sourceElement) {
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(classProto, "classProto");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.h.f(sourceElement, "sourceElement");
        this.f19416a = nameResolver;
        this.f19417b = classProto;
        this.f19418c = metadataVersion;
        this.f19419d = sourceElement;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return kotlin.jvm.internal.h.a(this.f19416a, hVar.f19416a) && kotlin.jvm.internal.h.a(this.f19417b, hVar.f19417b) && kotlin.jvm.internal.h.a(this.f19418c, hVar.f19418c) && kotlin.jvm.internal.h.a(this.f19419d, hVar.f19419d);
    }

    public final int hashCode() {
        return this.f19419d.hashCode() + ((this.f19418c.hashCode() + ((this.f19417b.hashCode() + (this.f19416a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ClassData(nameResolver=" + this.f19416a + ", classProto=" + this.f19417b + ", metadataVersion=" + this.f19418c + ", sourceElement=" + this.f19419d + ')';
    }
}
