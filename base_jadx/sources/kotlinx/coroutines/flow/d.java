package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public class d<T> extends qc.e<T> {

    /* renamed from: d, reason: collision with root package name */
    public final x9.p<pc.r<? super T>, p9.d<? super l9.m>, Object> f9040d;

    /* JADX WARN: Multi-variable type inference failed */
    public d(x9.p<? super pc.r<? super T>, ? super p9.d<? super l9.m>, ? extends Object> pVar, p9.f fVar, int r32, pc.f fVar2) {
        super(fVar, r32, fVar2);
        this.f9040d = pVar;
    }

    @Override // qc.e
    public final String toString() {
        return "block[" + this.f9040d + "] -> " + super.toString();
    }
}
