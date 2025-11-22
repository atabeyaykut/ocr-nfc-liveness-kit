package z0;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import x0.m;
import x0.w;
import z0.h;

/* loaded from: classes.dex */
public final class g extends q1.i<v0.f, w<?>> implements h {

    /* renamed from: d, reason: collision with root package name */
    public h.a f19746d;

    public g(long j10) {
        super(j10);
    }

    @Override // q1.i
    public final int b(@Nullable w<?> wVar) {
        w<?> wVar2 = wVar;
        if (wVar2 == null) {
            return 1;
        }
        return wVar2.getSize();
    }

    @Override // q1.i
    public final void c(@NonNull v0.f fVar, @Nullable w<?> wVar) {
        w<?> wVar2 = wVar;
        h.a aVar = this.f19746d;
        if (aVar == null || wVar2 == null) {
            return;
        }
        ((m) aVar).f19020e.a(wVar2, true);
    }

    @SuppressLint({"InlinedApi"})
    public final void f(int r52) {
        long j10;
        if (r52 >= 40) {
            e(0L);
        } else if (r52 >= 20 || r52 == 15) {
            synchronized (this) {
                j10 = this.f13310b;
            }
            e(j10 / 2);
        }
    }
}
