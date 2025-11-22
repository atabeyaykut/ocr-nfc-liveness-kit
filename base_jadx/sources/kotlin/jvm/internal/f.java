package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public class f extends a implements e, da.g {
    private final int arity;
    private final int flags;

    public f(int r82) {
        this(r82, a.NO_RECEIVER, null, null, null, 0);
    }

    public f(int r82, Object obj) {
        this(r82, obj, null, null, null, 0);
    }

    public f(int r92, Object obj, Class cls, String str, String str2, int r14) {
        super(obj, cls, str, str2, (r14 & 1) == 1);
        this.arity = r92;
        this.flags = r14 >> 1;
    }

    @Override // kotlin.jvm.internal.a
    public da.c computeReflected() {
        return w.f8976a.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return getName().equals(fVar.getName()) && getSignature().equals(fVar.getSignature()) && this.flags == fVar.flags && this.arity == fVar.arity && h.a(getBoundReceiver(), fVar.getBoundReceiver()) && h.a(getOwner(), fVar.getOwner());
        }
        if (obj instanceof da.g) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.e
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.jvm.internal.a
    public da.g getReflected() {
        return (da.g) super.getReflected();
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    @Override // da.g
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // da.g
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // da.g
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // da.g
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.a, da.c
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        da.c cVarCompute = compute();
        if (cVarCompute != this) {
            return cVarCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }
}
