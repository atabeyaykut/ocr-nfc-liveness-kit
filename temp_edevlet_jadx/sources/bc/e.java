package bc;

import bc.c;
import cc.h;

/* loaded from: classes2.dex */
public final class e extends c.i<Object> {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ x9.l f1212e;
    public final /* synthetic */ x9.l f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(c cVar, h.b bVar, h.c cVar2, h.d dVar) {
        super(cVar, bVar);
        this.f1212e = cVar2;
        this.f = dVar;
    }

    public static /* synthetic */ void a(int r6) {
        String str = r6 != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[r6 != 2 ? 2 : 3];
        if (r6 != 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
        } else {
            objArr[0] = "value";
        }
        if (r6 != 2) {
            objArr[1] = "recursionDetected";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
        }
        if (r6 == 2) {
            objArr[2] = "doPostCompute";
        }
        String str2 = String.format(str, objArr);
        if (r6 == 2) {
            throw new IllegalArgumentException(str2);
        }
    }

    @Override // bc.c.f
    public final c.m<Object> c(boolean z10) {
        x9.l lVar = this.f1212e;
        if (lVar != null) {
            return new c.m<>(lVar.invoke(Boolean.valueOf(z10)), false);
        }
        c.m<Object> mVarC = super.c(z10);
        if (mVarC != null) {
            return mVarC;
        }
        a(0);
        throw null;
    }
}
