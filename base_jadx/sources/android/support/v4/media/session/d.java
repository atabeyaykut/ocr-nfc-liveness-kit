package android.support.v4.media.session;

import android.content.Context;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.RequiresApi;

@RequiresApi(23)
/* loaded from: classes.dex */
public class d extends MediaControllerCompat$MediaControllerImplApi21 {
    public d(Context context, MediaSessionCompat.Token token) throws RemoteException {
        super(context, token);
    }
}
