package mf;

import java.util.List;
import m9.v;
import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;

/* loaded from: classes3.dex */
public final class e implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<List<AboutPageModelRealm>>> f10406a;

    /* renamed from: b, reason: collision with root package name */
    public final List<AboutPageModelRealm> f10407b;

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(r0.b<? extends Result<List<AboutPageModelRealm>>> aboutPageListState, List<? extends AboutPageModelRealm> list) {
        kotlin.jvm.internal.h.f(aboutPageListState, "aboutPageListState");
        this.f10406a = aboutPageListState;
        this.f10407b = list;
    }

    public /* synthetic */ e(r0.b bVar, List list, int r32, kotlin.jvm.internal.d dVar) {
        this((r32 & 1) != 0 ? d1.f13733b : bVar, (r32 & 2) != 0 ? v.f10173a : list);
    }

    public static e copy$default(e eVar, r0.b aboutPageListState, List list, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            aboutPageListState = eVar.f10406a;
        }
        if ((r32 & 2) != 0) {
            list = eVar.f10407b;
        }
        eVar.getClass();
        kotlin.jvm.internal.h.f(aboutPageListState, "aboutPageListState");
        return new e(aboutPageListState, list);
    }

    public final r0.b<Result<List<AboutPageModelRealm>>> component1() {
        return this.f10406a;
    }

    public final List<AboutPageModelRealm> component2() {
        return this.f10407b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return kotlin.jvm.internal.h.a(this.f10406a, eVar.f10406a) && kotlin.jvm.internal.h.a(this.f10407b, eVar.f10407b);
    }

    public final int hashCode() {
        int r02 = this.f10406a.hashCode() * 31;
        List<AboutPageModelRealm> list = this.f10407b;
        return r02 + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("AboutPageState(aboutPageListState=");
        sb2.append(this.f10406a);
        sb2.append(", aboutPageList=");
        return android.support.v4.media.a.j(sb2, this.f10407b, ')');
    }
}
