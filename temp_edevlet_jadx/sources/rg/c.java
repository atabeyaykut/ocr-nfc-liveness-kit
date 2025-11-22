package rg;

import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class c extends j implements l<String, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InstitutionContactFragment f14684a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(InstitutionContactFragment institutionContactFragment) {
        super(1);
        this.f14684a = institutionContactFragment;
    }

    @Override // x9.l
    public final m invoke(String str) {
        String phoneNumber = str;
        h.e(phoneNumber, "phoneNumber");
        da.m<Object>[] mVarArr = InstitutionContactFragment.f16844c;
        InstitutionContactFragment institutionContactFragment = this.f14684a;
        institutionContactFragment.getClass();
        if (h.a(phoneNumber, "-")) {
            institutionContactFragment.F(R.string.warning_phone);
        } else {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("tel:".concat(phoneNumber)));
            institutionContactFragment.startActivity(intent);
        }
        return m.f9594a;
    }
}
