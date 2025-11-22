package x0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b1.o;
import com.bumptech.glide.load.data.d;
import x0.h;

/* loaded from: classes.dex */
public final class a0 implements d.a<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o.a f18932a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b0 f18933b;

    public a0(b0 b0Var, o.a aVar) {
        this.f18933b = b0Var;
        this.f18932a = aVar;
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void c(@NonNull Exception exc) {
        b0 b0Var = this.f18933b;
        o.a<?> aVar = this.f18932a;
        o.a<?> aVar2 = b0Var.f;
        if (aVar2 != null && aVar2 == aVar) {
            b0 b0Var2 = this.f18933b;
            o.a aVar3 = this.f18932a;
            h.a aVar4 = b0Var2.f18936b;
            v0.f fVar = b0Var2.f18940g;
            com.bumptech.glide.load.data.d<Data> dVar = aVar3.f1051c;
            aVar4.q(fVar, exc, dVar, dVar.d());
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void f(@Nullable Object obj) {
        b0 b0Var = this.f18933b;
        o.a<?> aVar = this.f18932a;
        o.a<?> aVar2 = b0Var.f;
        if (aVar2 != null && aVar2 == aVar) {
            b0 b0Var2 = this.f18933b;
            o.a aVar3 = this.f18932a;
            l lVar = b0Var2.f18935a.f18975p;
            if (obj != null && lVar.c(aVar3.f1051c.d())) {
                b0Var2.f18939e = obj;
                b0Var2.f18936b.o();
            } else {
                h.a aVar4 = b0Var2.f18936b;
                v0.f fVar = aVar3.f1049a;
                com.bumptech.glide.load.data.d<Data> dVar = aVar3.f1051c;
                aVar4.n(fVar, obj, dVar, dVar.d(), b0Var2.f18940g);
            }
        }
    }
}
