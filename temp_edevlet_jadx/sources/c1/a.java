package c1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b1.g;
import b1.m;
import b1.n;
import b1.o;
import b1.p;
import b1.s;
import com.bumptech.glide.load.data.j;
import java.io.InputStream;
import java.util.ArrayDeque;
import v0.h;

/* loaded from: classes.dex */
public final class a implements o<g, InputStream> {

    /* renamed from: b, reason: collision with root package name */
    public static final v0.g<Integer> f1344b = v0.g.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final n<g, g> f1345a;

    /* renamed from: c1.a$a, reason: collision with other inner class name */
    public static class C0051a implements p<g, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final n<g, g> f1346a = new n<>();

        @Override // b1.p
        @NonNull
        public final o<g, InputStream> a(s sVar) {
            return new a(this.f1346a);
        }
    }

    public a(@Nullable n<g, g> nVar) {
        this.f1345a = nVar;
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull g gVar) {
        return true;
    }

    @Override // b1.o
    public final o.a<InputStream> b(@NonNull g gVar, int r42, int r52, @NonNull h hVar) {
        g gVar2 = gVar;
        n<g, g> nVar = this.f1345a;
        if (nVar != null) {
            n.a aVarA = n.a.a(gVar2);
            m mVar = nVar.f1044a;
            Object objA = mVar.a(aVarA);
            ArrayDeque arrayDeque = n.a.f1045d;
            synchronized (arrayDeque) {
                arrayDeque.offer(aVarA);
            }
            g gVar3 = (g) objA;
            if (gVar3 == null) {
                mVar.d(n.a.a(gVar2), gVar2);
            } else {
                gVar2 = gVar3;
            }
        }
        return new o.a<>(gVar2, new j(gVar2, ((Integer) hVar.c(f1344b)).intValue()));
    }
}
