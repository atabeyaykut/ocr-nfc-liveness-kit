package pg;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import java.io.File;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final class s extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ServicePageActivity f13222a;

    public s(ServicePageActivity servicePageActivity) {
        this.f13222a = servicePageActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ServicePageActivity servicePageActivity = this.f13222a;
        try {
            int r02 = ServicePageActivity.s0;
            servicePageActivity.E();
            Long lValueOf = intent != null ? Long.valueOf(intent.getLongExtra("extra_download_id", 0L)) : null;
            Object systemService = servicePageActivity.getSystemService("download");
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
            DownloadManager downloadManager = (DownloadManager) systemService;
            if (lValueOf == null || lValueOf.longValue() == 0) {
                return;
            }
            String mimeType = downloadManager.getMimeTypeForDownloadedFile(lValueOf.longValue());
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(lValueOf.longValue());
            Cursor cursorQuery = downloadManager.query(query);
            kotlin.jvm.internal.h.e(cursorQuery, "dm.query(myDownloadQuery)");
            if (cursorQuery.moveToFirst()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("local_uri"));
                kotlin.jvm.internal.h.e(string, "cursor.getString(cursor.…anager.COLUMN_LOCAL_URI))");
                File file = new File(mc.j.C(string, "file://", ""));
                if (file.exists()) {
                    kotlin.jvm.internal.h.e(mimeType, "mimeType");
                    c.b(servicePageActivity, file, mimeType);
                } else {
                    servicePageActivity.H();
                }
            }
            cursorQuery.close();
        } catch (Exception unused) {
            int r82 = ServicePageActivity.s0;
            servicePageActivity.H();
        }
    }
}
