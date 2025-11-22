package cg;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import x9.l;

/* loaded from: classes3.dex */
public final class h extends kotlin.jvm.internal.j implements l<v.e, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f2403a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(LoginActivity loginActivity) {
        super(1);
        this.f2403a = loginActivity;
    }

    @Override // x9.l
    public final m invoke(v.e eVar) {
        v.e dialog = eVar;
        kotlin.jvm.internal.h.f(dialog, "dialog");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("tel:160"));
        this.f2403a.startActivity(intent);
        dialog.dismiss();
        return m.f9594a;
    }
}
