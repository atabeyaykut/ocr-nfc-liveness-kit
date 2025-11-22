package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class s extends a implements da.m {
    public s() {
    }

    public s(Object obj, Class cls, String str, String str2, int r12) {
        super(obj, cls, str, str2, (r12 & 1) == 1);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s) {
            s sVar = (s) obj;
            return getOwner().equals(sVar.getOwner()) && getName().equals(sVar.getName()) && getSignature().equals(sVar.getSignature()) && h.a(getBoundReceiver(), sVar.getBoundReceiver());
        }
        if (obj instanceof da.m) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.a
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final da.m getReflected() {
        return (da.m) super.getReflected();
    }

    public final int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner().hashCode() * 31)) * 31);
    }

    public final String toString() {
        da.c cVarCompute = compute();
        if (cVarCompute != this) {
            return cVarCompute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}
