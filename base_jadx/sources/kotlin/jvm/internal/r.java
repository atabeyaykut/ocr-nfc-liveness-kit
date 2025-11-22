package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public class r extends q {
    public r(da.f fVar, String str, String str2) {
        super(a.NO_RECEIVER, ((b) fVar).g(), str, str2, !(fVar instanceof da.d) ? 1 : 0);
    }

    public r(Class cls, String str, String str2) {
        super(a.NO_RECEIVER, cls, str, str2, 0);
    }

    @Override // da.l
    public Object get(Object obj) {
        return l().call(obj);
    }
}
