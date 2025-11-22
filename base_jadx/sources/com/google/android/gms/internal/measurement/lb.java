package com.google.android.gms.internal.measurement;

import androidx.core.app.NotificationCompat;
import java.util.List;

/* loaded from: classes.dex */
public final class lb extends j {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3619c = 1;

    public lb() {
        super("internal.platform");
        this.f3562b.put("getVersion", new sc());
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List list) {
        switch (this.f3619c) {
            case 0:
                return this;
            default:
                return p.f3668i;
        }
    }

    public lb(int r12) {
        super(NotificationCompat.GROUP_KEY_SILENT);
    }
}
