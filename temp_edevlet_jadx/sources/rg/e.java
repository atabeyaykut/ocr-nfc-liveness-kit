package rg;

import android.content.ActivityNotFoundException;
import android.content.Context;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class e extends j implements l<String, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InstitutionContactFragment f14686a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(InstitutionContactFragment institutionContactFragment) {
        super(1);
        this.f14686a = institutionContactFragment;
    }

    @Override // x9.l
    public final m invoke(String str) {
        int r6;
        String website = str;
        h.e(website, "website");
        da.m<Object>[] mVarArr = InstitutionContactFragment.f16844c;
        InstitutionContactFragment institutionContactFragment = this.f14686a;
        institutionContactFragment.getClass();
        if (h.a(website, "-")) {
            r6 = R.string.warning_web;
            institutionContactFragment.F(r6);
        } else {
            try {
                Context context = institutionContactFragment.f16846b;
                if (context != null) {
                    v.e eVar = new v.e(context);
                    v.e.c(eVar, Integer.valueOf(R.string.redirect_to_web_page), null, 6);
                    v.e.e(eVar, Integer.valueOf(R.string.web_page_warning_dialog_ok), null, new a(website, institutionContactFragment), 2);
                    v.e.d(eVar, Integer.valueOf(R.string.web_page_warning_dialog_cancel), b.f14683a);
                    eVar.show();
                }
            } catch (ActivityNotFoundException unused) {
                r6 = R.string.web_page_no_application;
            } catch (Exception unused2) {
            }
        }
        return m.f9594a;
    }
}
