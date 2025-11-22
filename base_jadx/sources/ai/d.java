package ai;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

/* loaded from: classes3.dex */
public final class d extends j implements l<v.e, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f346a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context) {
        super(1);
        this.f346a = context;
    }

    @Override // x9.l
    public final m invoke(v.e eVar) {
        v.e dialog = eVar;
        h.f(dialog, "dialog");
        Context context = this.f346a;
        h.f(context, "context");
        try {
            try {
                Intent intent = new Intent();
                intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
                intent.putExtra("extra_pkgname", context.getPackageName());
                intent.addFlags(268435456);
                context.startActivity(intent);
            } catch (Exception unused) {
                Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                intent2.putExtra("extra_pkgname", context.getPackageName());
                intent2.addFlags(268435456);
                context.startActivity(intent2);
            }
        } catch (Exception unused2) {
            Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            Uri uriFromParts = Uri.fromParts("package", context.getPackageName(), null);
            intent3.addFlags(268435456);
            intent3.setData(uriFromParts);
            context.startActivity(intent3);
        }
        dialog.dismiss();
        return m.f9594a;
    }
}
