package android.support.v4.media.session;

import android.content.Context;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.RequiresApi;

@RequiresApi(24)
/* loaded from: classes.dex */
public final class e extends d {
    public e(Context context, MediaSessionCompat.Token token) throws RemoteException {
        super(context, token);
    }
}
