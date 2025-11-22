package ng;

import c5.w;
import io.realm.RealmQuery;
import io.realm.d0;
import io.realm.g0;
import io.realm.y0;
import java.util.ArrayList;
import java.util.List;
import l9.m;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.EditorChoiceServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import ud.d0;
import x9.p;

/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public d0 f10958a;

    /* renamed from: b, reason: collision with root package name */
    public String f10959b;

    /* renamed from: c, reason: collision with root package name */
    public String f10960c;

    /* renamed from: d, reason: collision with root package name */
    public String f10961d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f10962e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchRepository", f = "SearchRepository.kt", l = {69, 92}, m = "fetchEditorServiceList")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f10963a;

        /* renamed from: c, reason: collision with root package name */
        public int f10965c;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f10963a = obj;
            this.f10965c |= Integer.MIN_VALUE;
            return h.this.b(this);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchRepository$fetchEditorServiceList$2", f = "SearchRepository.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return h.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(h.a(h.this));
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchRepository$fetchEditorServiceList$3", f = "SearchRepository.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<a0, p9.d<? super Success<List<? extends ServiceModelRealm>>>, Object> {
        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return h.this.new c(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super Success<List<? extends ServiceModelRealm>>> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            return new Success(h.a(h.this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArrayList a(h hVar) {
        hVar.getClass();
        g0 realmMain = g0.t();
        kotlin.jvm.internal.h.e(realmMain, "realmMain");
        RealmQuery realmQueryJ = realmMain.J(EditorChoiceServiceModelRealm.class);
        realmQueryJ.h("serviceInsertion");
        y0 y0VarD = realmQueryJ.d();
        ArrayList arrayList = new ArrayList();
        d0.c cVar = new d0.c();
        while (cVar.hasNext()) {
            EditorChoiceServiceModelRealm editorChoiceServiceModelRealm = (EditorChoiceServiceModelRealm) cVar.next();
            RealmQuery realmQueryJ2 = realmMain.J(ServiceModelRealm.class);
            realmQueryJ2.b(editorChoiceServiceModelRealm.getServiceCode(), "serviceCode");
            ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ2.e();
            if (serviceModelRealm != null) {
                arrayList.add(serviceModelRealm);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<java.util.List<tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm>>> r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ng.h.b(p9.d):java.lang.Object");
    }
}
