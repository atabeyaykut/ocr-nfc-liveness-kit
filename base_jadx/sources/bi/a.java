package bi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import h6.i0;
import java.util.List;
import java.util.ListIterator;
import kotlin.jvm.internal.h;
import m9.t;
import m9.v;
import mc.d;
import qd.b;

/* loaded from: classes3.dex */
public final class a extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public InterfaceC0050a f1339a;

    /* renamed from: bi.a$a, reason: collision with other inner class name */
    public interface InterfaceC0050a {
        void h(String str);

        void i();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        List listT1;
        h.f(context, "context");
        h.f(intent, "intent");
        if (!h.a("com.google.android.gms.auth.api.phone.SMS_RETRIEVED", intent.getAction()) || (extras = intent.getExtras()) == null) {
            return;
        }
        Object obj = extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
        h.d(obj, "null cannot be cast to non-null type com.google.android.gms.common.api.Status");
        int r6 = ((Status) obj).f2979b;
        if (r6 != 0) {
            if (r6 != 15) {
                if (r6 != 17) {
                    return;
                }
                yd.a.f19652a.c("Api Not Connected", new Object[0]);
                return;
            } else {
                InterfaceC0050a interfaceC0050a = this.f1339a;
                if (interfaceC0050a != null) {
                    interfaceC0050a.i();
                    return;
                } else {
                    yd.a.f19652a.c("CommonStatusCodes TIMEOUT", new Object[0]);
                    return;
                }
            }
        }
        Object obj2 = extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
        h.d(obj2, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj2;
        if (this.f1339a == null) {
            yd.a.f19652a.c("otpReceiver = null", new Object[0]);
            return;
        }
        List listB = new d(":").b(str);
        boolean zIsEmpty = listB.isEmpty();
        List listT12 = v.f10173a;
        if (zIsEmpty) {
            listT1 = listT12;
        } else {
            ListIterator listIterator = listB.listIterator(listB.size());
            while (listIterator.hasPrevious()) {
                if (!(((String) listIterator.previous()).length() == 0)) {
                    listT1 = t.t1(listB, listIterator.nextIndex() + 1);
                    break;
                }
            }
            listT1 = listT12;
        }
        List listB2 = new d("\\s").b(((String[]) listT1.toArray(new String[0]))[1]);
        if (!listB2.isEmpty()) {
            ListIterator listIterator2 = listB2.listIterator(listB2.size());
            while (true) {
                if (!listIterator2.hasPrevious()) {
                    break;
                }
                if (!(((String) listIterator2.previous()).length() == 0)) {
                    listT12 = t.t1(listB2, listIterator2.nextIndex() + 1);
                    break;
                }
            }
        }
        String str2 = ((String[]) listT12.toArray(new String[0]))[1];
        b.b().i(new i0(str2));
        InterfaceC0050a interfaceC0050a2 = this.f1339a;
        if (interfaceC0050a2 != null) {
            interfaceC0050a2.h(str2);
        }
    }
}
