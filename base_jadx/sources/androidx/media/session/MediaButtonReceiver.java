package androidx.media.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.a;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.d;
import android.support.v4.media.session.e;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import androidx.media.MediaBrowserServiceCompat;
import java.util.HashSet;
import java.util.List;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {
    private static final String TAG = "MediaButtonReceiver";

    public static class MediaButtonConnectionCallback extends MediaBrowserCompat.b {
        private final Context mContext;
        private final Intent mIntent;
        private MediaBrowserCompat mMediaBrowser;
        private final BroadcastReceiver.PendingResult mPendingResult;

        public MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.mContext = context;
            this.mIntent = intent;
            this.mPendingResult = pendingResult;
        }

        private void finish() {
            Messenger messenger;
            MediaBrowserCompat.c cVar = this.mMediaBrowser.f360a;
            MediaBrowserCompat.g gVar = cVar.f;
            if (gVar != null && (messenger = cVar.f371g) != null) {
                try {
                    gVar.a(7, null, messenger);
                } catch (RemoteException unused) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            cVar.f367b.disconnect();
            this.mPendingResult.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnected() {
            Context context;
            MediaSessionCompat.Token token;
            try {
                context = this.mContext;
                MediaBrowserCompat.c cVar = this.mMediaBrowser.f360a;
                if (cVar.f372h == null) {
                    cVar.f372h = MediaSessionCompat.Token.a(cVar.f367b.getSessionToken(), null);
                }
                token = cVar.f372h;
                new HashSet();
            } catch (RemoteException e10) {
                Log.e(MediaButtonReceiver.TAG, "Failed to create a media controller", e10);
            }
            if (token == null) {
                throw new IllegalArgumentException("sessionToken must not be null");
            }
            int r22 = Build.VERSION.SDK_INT;
            MediaControllerCompat$MediaControllerImplApi21 eVar = r22 >= 24 ? new e(context, token) : r22 >= 23 ? new d(context, token) : new MediaControllerCompat$MediaControllerImplApi21(context, token);
            KeyEvent keyEvent = (KeyEvent) this.mIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                throw new IllegalArgumentException("KeyEvent may not be null");
            }
            eVar.f392a.dispatchMediaButtonEvent(keyEvent);
            finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnectionFailed() {
            finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnectionSuspended() {
            finish();
        }

        public void setMediaBrowser(MediaBrowserCompat mediaBrowserCompat) {
            this.mMediaBrowser = mediaBrowserCompat;
        }
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j10) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent != null) {
            return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j10);
        }
        Log.w(TAG, "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
        return null;
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j10) {
        String str;
        if (componentName == null) {
            str = "The component name of media button receiver should be provided.";
        } else {
            int r22 = j10 == 4 ? 126 : j10 == 2 ? CertificateBody.profileType : j10 == 32 ? 87 : j10 == 16 ? 88 : j10 == 1 ? 86 : j10 == 64 ? 90 : j10 == 8 ? 89 : j10 == 512 ? 85 : 0;
            if (r22 != 0) {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.setComponent(componentName);
                intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, r22));
                return PendingIntent.getBroadcast(context, r22, intent, 0);
            }
            str = "Cannot build a media button pending intent with the given action: " + j10;
        }
        Log.w(TAG, str);
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        if (listQueryBroadcastReceivers.size() <= 1) {
            return null;
        }
        Log.w(TAG, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        return null;
    }

    private static ComponentName getServiceComponentByAction(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (listQueryIntentServices.isEmpty()) {
            return null;
        }
        StringBuilder sbL = a.l("Expected 1 service that handles ", str, ", found ");
        sbL.append(listQueryIntentServices.size());
        throw new IllegalStateException(sbL.toString());
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        throw null;
    }

    private static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.d(TAG, "Ignore unsupported intent: " + intent);
            return;
        }
        ComponentName serviceComponentByAction = getServiceComponentByAction(context, "android.intent.action.MEDIA_BUTTON");
        if (serviceComponentByAction != null) {
            intent.setComponent(serviceComponentByAction);
            startForegroundService(context, intent);
            return;
        }
        ComponentName serviceComponentByAction2 = getServiceComponentByAction(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
        if (serviceComponentByAction2 == null) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, pendingResultGoAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, serviceComponentByAction2, mediaButtonConnectionCallback);
        mediaButtonConnectionCallback.setMediaBrowser(mediaBrowserCompat);
        mediaBrowserCompat.f360a.f367b.connect();
    }
}
