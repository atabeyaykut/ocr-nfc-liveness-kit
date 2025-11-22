package i1;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.ImageHeaderParser;
import i1.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import q1.m;
import x0.w;

/* loaded from: classes.dex */
public final class a implements v0.j<ByteBuffer, c> {
    public static final C0125a f = new C0125a();

    /* renamed from: g, reason: collision with root package name */
    public static final b f7234g = new b();

    /* renamed from: a, reason: collision with root package name */
    public final Context f7235a;

    /* renamed from: b, reason: collision with root package name */
    public final List<ImageHeaderParser> f7236b;

    /* renamed from: c, reason: collision with root package name */
    public final b f7237c;

    /* renamed from: d, reason: collision with root package name */
    public final C0125a f7238d;

    /* renamed from: e, reason: collision with root package name */
    public final i1.b f7239e;

    @VisibleForTesting
    /* renamed from: i1.a$a, reason: collision with other inner class name */
    public static class C0125a {
    }

    @VisibleForTesting
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayDeque f7240a;

        public b() {
            char[] cArr = m.f13318a;
            this.f7240a = new ArrayDeque(0);
        }

        public final synchronized void a(u0.d dVar) {
            dVar.f17772b = null;
            dVar.f17773c = null;
            this.f7240a.offer(dVar);
        }
    }

    public a(Context context, ArrayList arrayList, y0.c cVar, y0.b bVar) {
        C0125a c0125a = f;
        this.f7235a = context.getApplicationContext();
        this.f7236b = arrayList;
        this.f7238d = c0125a;
        this.f7239e = new i1.b(cVar, bVar);
        this.f7237c = f7234g;
    }

    public static int d(u0.c cVar, int r6, int r72) {
        int r02 = Math.min(cVar.f17766g / r72, cVar.f / r6);
        int r03 = Math.max(1, r02 == 0 ? 0 : Integer.highestOneBit(r02));
        if (Log.isLoggable("BufferGifDecoder", 2) && r03 > 1) {
            StringBuilder sbF = androidx.constraintlayout.core.a.f("Downsampling GIF, sampleSize: ", r03, ", target dimens: [", r6, "x");
            sbF.append(r72);
            sbF.append("], actual dimens: [");
            sbF.append(cVar.f);
            sbF.append("x");
            sbF.append(cVar.f17766g);
            sbF.append("]");
            Log.v("BufferGifDecoder", sbF.toString());
        }
        return r03;
    }

    @Override // v0.j
    public final boolean a(@NonNull ByteBuffer byteBuffer, @NonNull v0.h hVar) throws IOException {
        return !((Boolean) hVar.c(i.f7277b)).booleanValue() && com.bumptech.glide.load.a.b(this.f7236b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    @Override // v0.j
    public final w<c> b(@NonNull ByteBuffer byteBuffer, int r92, int r10, @NonNull v0.h hVar) throws IOException {
        u0.d dVar;
        ByteBuffer byteBuffer2 = byteBuffer;
        b bVar = this.f7237c;
        synchronized (bVar) {
            u0.d dVar2 = (u0.d) bVar.f7240a.poll();
            if (dVar2 == null) {
                dVar2 = new u0.d();
            }
            dVar = dVar2;
            dVar.f17772b = null;
            Arrays.fill(dVar.f17771a, (byte) 0);
            dVar.f17773c = new u0.c();
            dVar.f17774d = 0;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
            dVar.f17772b = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            dVar.f17772b.order(ByteOrder.LITTLE_ENDIAN);
        }
        try {
            return c(byteBuffer2, r92, r10, dVar, hVar);
        } finally {
            this.f7237c.a(dVar);
        }
    }

    @Nullable
    public final e c(ByteBuffer byteBuffer, int r18, int r19, u0.d dVar, v0.h hVar) {
        int r02 = q1.h.f13308b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            u0.c cVarB = dVar.b();
            if (cVarB.f17763c > 0 && cVarB.f17762b == 0) {
                Bitmap.Config config = hVar.c(i.f7276a) == v0.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int r92 = d(cVarB, r18, r19);
                C0125a c0125a = this.f7238d;
                i1.b bVar = this.f7239e;
                c0125a.getClass();
                u0.e eVar = new u0.e(bVar, cVarB, byteBuffer, r92);
                eVar.h(config);
                eVar.b();
                Bitmap bitmapA = eVar.a();
                if (bitmapA != null) {
                    return new e(new c(new c.a(new g(com.bumptech.glide.b.b(this.f7235a), eVar, r18, r19, d1.b.f4646b, bitmapA))));
                }
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + q1.h.a(jElapsedRealtimeNanos));
                }
                return null;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + q1.h.a(jElapsedRealtimeNanos));
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + q1.h.a(jElapsedRealtimeNanos));
            }
        }
    }
}
