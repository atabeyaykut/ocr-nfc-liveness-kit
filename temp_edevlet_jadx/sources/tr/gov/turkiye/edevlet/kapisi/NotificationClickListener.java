package tr.gov.turkiye.edevlet.kapisi;

import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.DeleteDeviceWorker;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/NotificationClickListener;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "app_v21Release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NotificationClickListener extends BroadcastReceiver {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Context context, String str) throws Throwable {
        try {
            g[] gVarArr = {new g("tidValue", str)};
            Data.Builder builder = new Data.Builder();
            g gVar = gVarArr[0];
            builder.put((String) gVar.f9582a, gVar.f9583b);
            Data dataBuild = builder.build();
            h.e(dataBuild, "dataBuilder.build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(DeleteDeviceWorker.class).setInputData(dataBuild).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…\n                .build()");
            WorkManager.getInstance(context).enqueue(oneTimeWorkRequestBuild);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01bc A[Catch: Exception -> 0x01cb, TryCatch #0 {Exception -> 0x01cb, blocks: (B:3:0x0002, B:5:0x0010, B:7:0x0018, B:9:0x002e, B:12:0x0038, B:15:0x0042, B:18:0x004c, B:21:0x0056, B:24:0x0060, B:27:0x006e, B:34:0x007c, B:65:0x01b7, B:67:0x01bc, B:68:0x01c6, B:42:0x0090, B:48:0x009c, B:51:0x00ce, B:53:0x010c, B:54:0x011a, B:55:0x0133, B:62:0x01a8, B:56:0x013a, B:58:0x0142, B:60:0x0180, B:61:0x018e), top: B:71:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c6 A[Catch: Exception -> 0x01cb, TRY_LEAVE, TryCatch #0 {Exception -> 0x01cb, blocks: (B:3:0x0002, B:5:0x0010, B:7:0x0018, B:9:0x002e, B:12:0x0038, B:15:0x0042, B:18:0x004c, B:21:0x0056, B:24:0x0060, B:27:0x006e, B:34:0x007c, B:65:0x01b7, B:67:0x01bc, B:68:0x01c6, B:42:0x0090, B:48:0x009c, B:51:0x00ce, B:53:0x010c, B:54:0x011a, B:55:0x0133, B:62:0x01a8, B:56:0x013a, B:58:0x0142, B:60:0x0180, B:61:0x018e), top: B:71:0x0002 }] */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceive(android.content.Context r22, android.content.Intent r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.NotificationClickListener.onReceive(android.content.Context, android.content.Intent):void");
    }
}
