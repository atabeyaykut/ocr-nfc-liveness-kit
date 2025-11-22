package tr.gov.turkiye.edevlet.kapisi;

import android.content.SharedPreferences;
import androidx.work.Configuration;
import androidx.work.DelegatingWorkerFactory;
import androidx.work.WorkManager;
import be.j;
import bf.a;
import bf.c;
import c5.v;
import ch.l;
import com.google.android.gms.internal.clearcut.d0;
import io.realm.g0;
import io.realm.o0;
import j0.e;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import mf.f;
import ng.k;
import r0.g1;
import r0.k0;
import rf.g;
import t8.b;
import tf.i;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyLoginWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.editor.EditorChoiceWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteListWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.UnfavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.logout.LogoutWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSRequestWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.TokenRequestWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.ApprovalWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.DeleteDeviceWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.TimeWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.section.SectionListWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateCheckWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateLogWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateModuleCheckWorker;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.a;
import ud.d0;
import vd.d;
import zf.d1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;", "Lt8/b;", "<init>", "()V", "app_v21Release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BaseApplication extends b {

    /* renamed from: b, reason: collision with root package name */
    public d1 f15760b;

    @Override // t8.b
    public final d1 a() {
        d();
        d1 d1Var = this.f15760b;
        if (d1Var != null) {
            return d1Var;
        }
        h.n("appComponent");
        throw null;
    }

    public final void d() {
        d1 d1Var = new d1(new d(null), new af.b(new a(), new c(), this), this);
        this.f15760b = d1Var;
        e eVar = new e(37);
        eVar.h(k.class, (cf.a) d1Var.f20104j0.f18301a);
        eVar.h(sf.d.class, (cf.a) d1Var.f20119o0.f18301a);
        eVar.h(yf.e.class, (cf.a) d1Var.f20122p0.f18301a);
        eVar.h(vf.c.class, (cf.a) d1Var.f20125q0.f18301a);
        eVar.h(nf.e.class, (cf.a) d1Var.f20128r0.f18301a);
        eVar.h(pf.d.class, (cf.a) d1Var.s0.f18301a);
        eVar.h(qf.d.class, (cf.a) d1Var.f20133t0.f18301a);
        eVar.h(of.d.class, (cf.a) d1Var.f20136u0.f18301a);
        eVar.h(f.class, (cf.a) d1Var.f20139v0.f18301a);
        eVar.h(i.class, (cf.a) d1Var.f20141w0.f18301a);
        eVar.h(uf.d.class, (cf.a) d1Var.f20144x0.f18301a);
        eVar.h(g.class, (cf.a) d1Var.f20147y0.f18301a);
        eVar.h(vg.d.class, (cf.a) d1Var.f20150z0.f18301a);
        eVar.h(wg.d.class, (cf.a) d1Var.A0.f18301a);
        eVar.h(qg.i.class, (cf.a) d1Var.B0.f18301a);
        eVar.h(ag.d.class, (cf.a) d1Var.C0.f18301a);
        eVar.h(fg.f.class, (cf.a) d1Var.F0.f18301a);
        eVar.h(gg.b.class, (cf.a) d1Var.G0.f18301a);
        eVar.h(ig.a.class, (cf.a) d1Var.H0.f18301a);
        eVar.h(j.class, (cf.a) d1Var.I0.f18301a);
        eVar.h(th.d.class, (cf.a) d1Var.J0.f18301a);
        eVar.h(jh.c.class, (cf.a) d1Var.K0.f18301a);
        eVar.h(bh.c.class, (cf.a) d1Var.L0.f18301a);
        eVar.h(yg.d.class, (cf.a) d1Var.M0.f18301a);
        eVar.h(dh.f.class, (cf.a) d1Var.N0.f18301a);
        eVar.h(uh.d.class, (cf.a) d1Var.P0.f18301a);
        eVar.h(hh.g.class, (cf.a) d1Var.Q0.f18301a);
        eVar.h(kh.e.class, (cf.a) d1Var.R0.f18301a);
        eVar.h(l.class, (cf.a) d1Var.S0.f18301a);
        eVar.h(mh.c.class, (cf.a) d1Var.T0.f18301a);
        eVar.h(lh.e.class, (cf.a) d1Var.U0.f18301a);
        eVar.h(nh.c.class, (cf.a) d1Var.V0.f18301a);
        eVar.h(fh.d.class, (cf.a) d1Var.W0.f18301a);
        eVar.h(zg.l.class, (cf.a) d1Var.Z0.f18301a);
        eVar.h(ph.d.class, (cf.a) d1Var.f20079a1.f18301a);
        eVar.h(wh.a.class, (cf.a) d1Var.f20082b1.f18301a);
        eVar.h(rh.d.class, (cf.a) d1Var.f20085c1.f18301a);
        Map mapE = eVar.e();
        mapE.getClass();
        a.C0269a.f16155a = new cf.b(new v(), mapE);
    }

    @Override // t8.b, android.app.Application
    public final void onCreate() {
        super.onCreate();
        d0.f = new k0((getApplicationInfo().flags & 2) != 0);
        g1 gVar = d0.f3070e;
        if (!(gVar instanceof r0.g)) {
            gVar = new r0.g();
        }
        d0.f3070e = gVar;
        d();
        Object obj = g0.f7537k;
        synchronized (g0.class) {
            g0.y(this);
        }
        o0.a aVar = new o0.a(io.realm.a.f7451g);
        aVar.f7762c = true;
        aVar.f7761b = "eDevletKapisi.realm";
        aVar.f7768j = true;
        aVar.f7769k = true;
        g0.F(aVar.a());
        DelegatingWorkerFactory delegatingWorkerFactory = new DelegatingWorkerFactory();
        d1 d1Var = this.f15760b;
        if (d1Var == null) {
            h.n("appComponent");
            throw null;
        }
        e eVar = new e(23);
        eVar.h(FavoriteListWorker.class, d1Var.f20088d1);
        eVar.h(FavoriteOperationWorker.class, d1Var.f20091e1);
        eVar.h(UnfavoriteOperationWorker.class, d1Var.f20093f1);
        eVar.h(EditorChoiceWorker.class, d1Var.f20096g1);
        eVar.h(SectionListWorker.class, d1Var.f20099h1);
        eVar.h(ServiceDetailWorker.class, d1Var.f20102i1);
        eVar.h(LogoutWorker.class, d1Var.f20105j1);
        eVar.h(UpdateCheckWorker.class, d1Var.f20108k1);
        eVar.h(UpdateLogWorker.class, d1Var.f20111l1);
        eVar.h(RegisterWorker.class, d1Var.f20114m1);
        eVar.h(BarcodeVerifyWorker.class, d1Var.f20117n1);
        eVar.h(BarcodeVerifyLoginWorker.class, d1Var.f20120o1);
        eVar.h(UpdateTokenWorker.class, d1Var.f20123p1);
        eVar.h(ApprovalWorker.class, d1Var.f20126q1);
        eVar.h(TimeWorker.class, d1Var.f20129r1);
        eVar.h(CardVerificationWorker.class, d1Var.f20131s1);
        eVar.h(SMSVerificationWorker.class, d1Var.f20134t1);
        eVar.h(SMSRequestWorker.class, d1Var.f20137u1);
        eVar.h(TokenRequestWorker.class, d1Var.f20140v1);
        eVar.h(InfoMessageWorker.class, d1Var.f20142w1);
        eVar.h(DeleteDeviceWorker.class, d1Var.f20145x1);
        eVar.h(UpdateModuleCheckWorker.class, d1Var.f20148y1);
        eVar.h(DownloadMediaWorker.class, d1Var.f20151z1);
        le.b bVar = new le.b(eVar.e());
        af.b bVar2 = (af.b) d1Var.f20077a;
        bVar.f9802b = bVar2.d();
        bVar2.f273a.getClass();
        rc.v vVarB = bVar2.b();
        d0.b bVar3 = new d0.b();
        bVar3.c("https://api.turkiye.gov.tr/");
        bVar3.f18004b = vVarB;
        bVar3.a(new vd.g());
        bVar3.b(wd.a.c());
        bVar.f9803c = bVar3.d();
        bVar2.f273a.getClass();
        rc.v vVarC = bVar2.c();
        d0.b bVar4 = new d0.b();
        bVar4.c("https://m.turkiye.gov.tr/");
        bVar4.f18004b = vVarC;
        bVar4.a(new vd.g());
        bVar4.b(wd.a.c());
        bVar.f9804d = bVar4.d();
        bVar2.f273a.getClass();
        rc.v vVarB2 = bVar2.b();
        d0.b bVar5 = new d0.b();
        bVar5.c("https://giris.turkiye.gov.tr/");
        bVar5.f18004b = vVarB2;
        bVar5.a(new vd.g());
        bVar5.b(wd.a.c());
        bVar.f9805e = bVar5.d();
        d1Var.f20080b.getClass();
        bVar.f = "5057";
        SharedPreferences sharedPreferencesE = bVar2.e();
        bVar2.f274b.getClass();
        bVar.f9806g = String.valueOf(sharedPreferencesE.getString("mode", "light"));
        bVar.f9807h = bVar2.a();
        delegatingWorkerFactory.addFactory(bVar);
        WorkManager.initialize(this, new Configuration.Builder().setMinimumLoggingLevel(3).setWorkerFactory(delegatingWorkerFactory).build());
    }
}
