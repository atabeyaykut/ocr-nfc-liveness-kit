package g7;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.IOException;

/* loaded from: classes2.dex */
public final /* synthetic */ class w implements h5.b {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final /* synthetic */ y f5941a;

    public /* synthetic */ w(@NonNull y yVar) {
        this.f5941a = yVar;
    }

    @Override // h5.b
    @NonNull
    public final Object c(@NonNull h5.k kVar) throws IOException {
        this.f5941a.getClass();
        Bundle bundle = (Bundle) kVar.j();
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null || (string = bundle.getString("unregistered")) != null) {
            return string;
        }
        String string2 = bundle.getString("error");
        if ("RST".equals(string2)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string2 != null) {
            throw new IOException(string2);
        }
        Log.w("FirebaseMessaging", "Unexpected response: ".concat(bundle.toString()), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }
}
