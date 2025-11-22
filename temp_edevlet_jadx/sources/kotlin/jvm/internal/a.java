package kotlin.jvm.internal;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class a implements da.c, Serializable {
    public static final Object NO_RECEIVER = C0167a.f8967a;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient da.c reflected;
    private final String signature;

    /* renamed from: kotlin.jvm.internal.a$a, reason: collision with other inner class name */
    public static class C0167a implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public static final C0167a f8967a = new C0167a();
    }

    public a() {
        this(NO_RECEIVER);
    }

    public a(Object obj) {
        this(obj, null, null, null, false);
    }

    public a(Object obj, Class cls, String str, String str2, boolean z10) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z10;
    }

    @Override // da.c
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // da.c
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public da.c compute() {
        da.c cVar = this.reflected;
        if (cVar != null) {
            return cVar;
        }
        da.c cVarComputeReflected = computeReflected();
        this.reflected = cVarComputeReflected;
        return cVarComputeReflected;
    }

    public abstract da.c computeReflected();

    @Override // da.b
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // da.c
    public String getName() {
        return this.name;
    }

    public da.f getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? w.f8976a.c(cls, "") : w.a(cls);
    }

    @Override // da.c
    public List<da.j> getParameters() {
        return getReflected().getParameters();
    }

    public da.c getReflected() {
        da.c cVarCompute = compute();
        if (cVarCompute != this) {
            return cVarCompute;
        }
        throw new w9.a();
    }

    @Override // da.c
    public da.n getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // da.c
    public List<da.o> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // da.c
    public da.q getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // da.c
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // da.c
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // da.c
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // da.c
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
