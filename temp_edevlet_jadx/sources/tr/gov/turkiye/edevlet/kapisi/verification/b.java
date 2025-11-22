package tr.gov.turkiye.edevlet.kapisi.verification;

import android.content.Intent;
import android.os.Handler;
import androidx.camera.core.impl.l;
import androidx.work.Data;
import c5.v;
import c5.w;
import kotlin.jvm.internal.h;
import l9.g;
import l9.m;
import nc.a0;
import nc.j0;
import p9.d;
import r9.e;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity;
import x9.p;

@e(c = "tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity$ReadCard$execute$1", f = "CardReadActivity.kt", l = {315}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class b extends i implements p<a0, d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f17594a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CardReadActivity.b f17595b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(CardReadActivity.b bVar, d<? super b> dVar) {
        super(2, dVar);
        this.f17595b = bVar;
    }

    @Override // r9.a
    public final d<m> create(Object obj, d<?> dVar) {
        return new b(this.f17595b, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
        return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f17594a;
        CardReadActivity.b bVar = this.f17595b;
        int r42 = 1;
        if (r12 == 0) {
            w.F(obj);
            this.f17594a = 1;
            bVar.getClass();
            obj = v.N(j0.f10809b, new a(bVar, CardReadActivity.this, null), this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        String str = (String) obj;
        bVar.getClass();
        boolean zA = h.a(str, "OK");
        CardReadActivity cardReadActivity = CardReadActivity.this;
        if (zA) {
            int r52 = 0;
            yd.a.f19652a.c(androidx.browser.browseractions.b.e("Post ok ", str), new Object[0]);
            ie.a aVar2 = cardReadActivity.f17561p;
            if (aVar2 != null) {
                aVar2.dismissAllowingStateLoss();
            }
            ie.b bVar2 = cardReadActivity.f17562q;
            if (bVar2 != null) {
                bVar2.show(cardReadActivity.getSupportFragmentManager(), ie.b.class.getSimpleName());
            }
            gf.b bVar3 = cardReadActivity.f17550b;
            if (bVar3 == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (bVar3.a()) {
                g[] gVarArr = {new g("serialNo", cardReadActivity.f17555h), new g("token", bVar.f17566d), new g("uuid", bVar.f17565c), new g("file1", bVar.f), new g("file2", bVar.f17568g), new g("file3", bVar.f17569h), new g("signedData", bVar.f17570j)};
                Data.Builder builder = new Data.Builder();
                while (r52 < 7) {
                    g gVar = gVarArr[r52];
                    r52++;
                    builder.put((String) gVar.f9582a, gVar.f9583b);
                }
                Data dataBuild = builder.build();
                h.e(dataBuild, "dataBuilder.build()");
                new Handler().postDelayed(new l(r42, dataBuild, cardReadActivity), 1500L);
            } else {
                v.e eVar = cardReadActivity.f17560n;
                if (eVar != null) {
                    eVar.dismiss();
                }
                cardReadActivity.t(R.string.toast_error_info, "warning");
            }
        } else {
            v.e eVar2 = cardReadActivity.f17560n;
            if (eVar2 != null) {
                eVar2.dismiss();
            }
            ie.a aVar3 = cardReadActivity.f17561p;
            if (aVar3 != null) {
                aVar3.dismissAllowingStateLoss();
            }
            cardReadActivity.startActivity(new Intent(cardReadActivity, (Class<?>) CardErrorActivity.class));
        }
        return m.f9594a;
    }
}
