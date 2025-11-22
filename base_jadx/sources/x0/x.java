package x0;

import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import x0.h;
import x0.m;

/* loaded from: classes.dex */
public final class x implements h, d.a<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final h.a f19097a;

    /* renamed from: b, reason: collision with root package name */
    public final i<?> f19098b;

    /* renamed from: c, reason: collision with root package name */
    public int f19099c;

    /* renamed from: d, reason: collision with root package name */
    public int f19100d = -1;

    /* renamed from: e, reason: collision with root package name */
    public v0.f f19101e;
    public List<b1.o<File, ?>> f;

    /* renamed from: g, reason: collision with root package name */
    public int f19102g;

    /* renamed from: h, reason: collision with root package name */
    public volatile o.a<?> f19103h;

    /* renamed from: j, reason: collision with root package name */
    public File f19104j;

    /* renamed from: k, reason: collision with root package name */
    public y f19105k;

    public x(i<?> iVar, h.a aVar) {
        this.f19098b = iVar;
        this.f19097a = aVar;
    }

    @Override // x0.h
    public final boolean a() {
        ArrayList arrayListA = this.f19098b.a();
        if (arrayListA.isEmpty()) {
            return false;
        }
        List<Class<?>> listD = this.f19098b.d();
        if (listD.isEmpty()) {
            if (File.class.equals(this.f19098b.f18970k)) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f19098b.f18964d.getClass() + " to " + this.f19098b.f18970k);
        }
        while (true) {
            List<b1.o<File, ?>> list = this.f;
            if (list != null) {
                if (this.f19102g < list.size()) {
                    this.f19103h = null;
                    boolean z10 = false;
                    while (!z10) {
                        if (!(this.f19102g < this.f.size())) {
                            break;
                        }
                        List<b1.o<File, ?>> list2 = this.f;
                        int r22 = this.f19102g;
                        this.f19102g = r22 + 1;
                        b1.o<File, ?> oVar = list2.get(r22);
                        File file = this.f19104j;
                        i<?> iVar = this.f19098b;
                        this.f19103h = oVar.b(file, iVar.f18965e, iVar.f, iVar.f18968i);
                        if (this.f19103h != null) {
                            if (this.f19098b.c(this.f19103h.f1051c.a()) != null) {
                                this.f19103h.f1051c.e(this.f19098b.f18974o, this);
                                z10 = true;
                            }
                        }
                    }
                    return z10;
                }
            }
            int r02 = this.f19100d + 1;
            this.f19100d = r02;
            if (r02 >= listD.size()) {
                int r03 = this.f19099c + 1;
                this.f19099c = r03;
                if (r03 >= arrayListA.size()) {
                    return false;
                }
                this.f19100d = 0;
            }
            v0.f fVar = (v0.f) arrayListA.get(this.f19099c);
            Class<?> cls = listD.get(this.f19100d);
            v0.l<Z> lVarF = this.f19098b.f(cls);
            i<?> iVar2 = this.f19098b;
            this.f19105k = new y(iVar2.f18963c.f2713a, fVar, iVar2.f18973n, iVar2.f18965e, iVar2.f, lVarF, cls, iVar2.f18968i);
            File fileG = ((m.c) iVar2.f18967h).a().g(this.f19105k);
            this.f19104j = fileG;
            if (fileG != null) {
                this.f19101e = fVar;
                this.f = this.f19098b.f18963c.a().g(fileG);
                this.f19102g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void c(@NonNull Exception exc) {
        this.f19097a.q(this.f19105k, exc, this.f19103h.f1051c, v0.a.RESOURCE_DISK_CACHE);
    }

    @Override // x0.h
    public final void cancel() {
        o.a<?> aVar = this.f19103h;
        if (aVar != null) {
            aVar.f1051c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void f(Object obj) {
        this.f19097a.n(this.f19101e, obj, this.f19103h.f1051c, v0.a.RESOURCE_DISK_CACHE, this.f19105k);
    }
}
