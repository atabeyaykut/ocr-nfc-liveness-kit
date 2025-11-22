package nc;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public abstract class n0 extends y {

    /* renamed from: a, reason: collision with root package name */
    public long f10817a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10818b;

    /* renamed from: c, reason: collision with root package name */
    public kotlinx.coroutines.internal.a<i0<?>> f10819c;

    public final void d(boolean z10) {
        long j10 = this.f10817a - (z10 ? 4294967296L : 1L);
        this.f10817a = j10;
        if (j10 <= 0 && this.f10818b) {
            shutdown();
        }
    }

    public final void g(i0<?> i0Var) {
        kotlinx.coroutines.internal.a<i0<?>> aVar = this.f10819c;
        if (aVar == null) {
            aVar = new kotlinx.coroutines.internal.a<>();
            this.f10819c = aVar;
        }
        Object[] objArr = aVar.f9130a;
        int r22 = aVar.f9132c;
        objArr[r22] = i0Var;
        int length = (objArr.length - 1) & (r22 + 1);
        aVar.f9132c = length;
        int r42 = aVar.f9131b;
        if (length == r42) {
            int length2 = objArr.length;
            Object[] objArr2 = new Object[length2 << 1];
            m9.i.j0(objArr, objArr2, 0, r42, 0, 10);
            Object[] objArr3 = aVar.f9130a;
            int length3 = objArr3.length;
            int r92 = aVar.f9131b;
            m9.i.j0(objArr3, objArr2, length3 - r92, 0, r92, 4);
            aVar.f9130a = objArr2;
            aVar.f9131b = 0;
            aVar.f9132c = length2;
        }
    }

    public final void j(boolean z10) {
        this.f10817a = (z10 ? 4294967296L : 1L) + this.f10817a;
        if (z10) {
            return;
        }
        this.f10818b = true;
    }

    public final boolean k() {
        return this.f10817a >= 4294967296L;
    }

    @Override // nc.y
    public final y limitedParallelism(int r12) {
        com.google.android.gms.internal.clearcut.d0.g(r12);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v0 */
    public final boolean m() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlinx.coroutines.internal.a<i0<?>> aVar = this.f10819c;
        if (aVar == null) {
            return false;
        }
        int r22 = aVar.f9131b;
        i0 i0Var = null;
        if (r22 != aVar.f9132c) {
            ?? r32 = aVar.f9130a;
            ?? r6 = r32[r22];
            r32[r22] = 0;
            aVar.f9131b = (r22 + 1) & (r32.length - 1);
            if (r6 == 0) {
                throw new NullPointerException("null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
            }
            i0Var = r6;
        }
        i0 i0Var2 = i0Var;
        if (i0Var2 == null) {
            return false;
        }
        i0Var2.run();
        return true;
    }

    public void shutdown() {
    }
}
