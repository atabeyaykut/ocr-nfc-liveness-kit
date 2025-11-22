package t1;

import java.util.List;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final List<d2.b> f15556a;

    /* renamed from: b, reason: collision with root package name */
    public final List<d2.a> f15557b;

    /* renamed from: c, reason: collision with root package name */
    public final c2.c<Boolean> f15558c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f15559d;

    /* renamed from: e, reason: collision with root package name */
    public final c2.c<Throwable> f15560e;
    public final c2.c<List<d2.b>> f;

    /* renamed from: g, reason: collision with root package name */
    public final c2.c<l9.m> f15561g;

    public w() {
        this(null, null, null, false, null, CertificateBody.profileType);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ w(List list, List list2, c2.c cVar, boolean z10, c2.c cVar2, int r16) {
        int r02 = r16 & 1;
        m9.v vVar = m9.v.f10173a;
        this(r02 != 0 ? vVar : list, (r16 & 2) != 0 ? vVar : list2, (r16 & 4) != 0 ? null : cVar, (r16 & 8) != 0 ? false : z10, (r16 & 16) != 0 ? null : cVar2, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w(List<d2.b> images, List<d2.a> folders, c2.c<Boolean> cVar, boolean z10, c2.c<? extends Throwable> cVar2, c2.c<? extends List<d2.b>> cVar3, c2.c<l9.m> cVar4) {
        kotlin.jvm.internal.h.f(images, "images");
        kotlin.jvm.internal.h.f(folders, "folders");
        this.f15556a = images;
        this.f15557b = folders;
        this.f15558c = cVar;
        this.f15559d = z10;
        this.f15560e = cVar2;
        this.f = cVar3;
        this.f15561g = cVar4;
    }

    public static w a(w wVar, c2.c cVar, c2.c cVar2, int r13) {
        List<d2.b> images = (r13 & 1) != 0 ? wVar.f15556a : null;
        List<d2.a> folders = (r13 & 2) != 0 ? wVar.f15557b : null;
        c2.c<Boolean> cVar3 = (r13 & 4) != 0 ? wVar.f15558c : null;
        boolean z10 = (r13 & 8) != 0 ? wVar.f15559d : false;
        c2.c<Throwable> cVar4 = (r13 & 16) != 0 ? wVar.f15560e : null;
        if ((r13 & 32) != 0) {
            cVar = wVar.f;
        }
        c2.c cVar5 = cVar;
        if ((r13 & 64) != 0) {
            cVar2 = wVar.f15561g;
        }
        wVar.getClass();
        kotlin.jvm.internal.h.f(images, "images");
        kotlin.jvm.internal.h.f(folders, "folders");
        return new w(images, folders, cVar3, z10, cVar4, cVar5, cVar2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return kotlin.jvm.internal.h.a(this.f15556a, wVar.f15556a) && kotlin.jvm.internal.h.a(this.f15557b, wVar.f15557b) && kotlin.jvm.internal.h.a(this.f15558c, wVar.f15558c) && this.f15559d == wVar.f15559d && kotlin.jvm.internal.h.a(this.f15560e, wVar.f15560e) && kotlin.jvm.internal.h.a(this.f, wVar.f) && kotlin.jvm.internal.h.a(this.f15561g, wVar.f15561g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.camera.camera2.internal.c.c(this.f15557b, this.f15556a.hashCode() * 31, 31);
        c2.c<Boolean> cVar = this.f15558c;
        int r03 = (r02 + (cVar == null ? 0 : cVar.hashCode())) * 31;
        boolean z10 = this.f15559d;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r04 = (r03 + r22) * 31;
        c2.c<Throwable> cVar2 = this.f15560e;
        int r05 = (r04 + (cVar2 == null ? 0 : cVar2.hashCode())) * 31;
        c2.c<List<d2.b>> cVar3 = this.f;
        int r06 = (r05 + (cVar3 == null ? 0 : cVar3.hashCode())) * 31;
        c2.c<l9.m> cVar4 = this.f15561g;
        return r06 + (cVar4 != null ? cVar4.hashCode() : 0);
    }

    public final String toString() {
        return "ImagePickerState(images=" + this.f15556a + ", folders=" + this.f15557b + ", isFolder=" + this.f15558c + ", isLoading=" + this.f15559d + ", error=" + this.f15560e + ", finishPickImage=" + this.f + ", showCapturedImage=" + this.f15561g + ')';
    }
}
