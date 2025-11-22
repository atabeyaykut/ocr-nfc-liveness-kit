package rg;

import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class a extends j implements l<v.e, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f14681a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InstitutionContactFragment f14682b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(String str, InstitutionContactFragment institutionContactFragment) {
        super(1);
        this.f14681a = str;
        this.f14682b = institutionContactFragment;
    }

    @Override // x9.l
    public final m invoke(v.e eVar) {
        v.e dialog = eVar;
        h.f(dialog, "dialog");
        dialog.dismiss();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(this.f14681a));
        this.f14682b.startActivity(intent);
        return m.f9594a;
    }
}
