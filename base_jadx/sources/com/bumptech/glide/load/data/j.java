package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public final class j implements d<InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final b1.g f2759a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2760b;

    /* renamed from: c, reason: collision with root package name */
    public HttpURLConnection f2761c;

    /* renamed from: d, reason: collision with root package name */
    public InputStream f2762d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f2763e;

    public static class a {
    }

    static {
        new a();
    }

    public j(b1.g gVar, int r22) {
        this.f2759a = gVar;
        this.f2760b = r22;
    }

    public static int c(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e10) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e10);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() throws IOException {
        InputStream inputStream = this.f2762d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f2761c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f2761c = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
        this.f2763e = true;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public final v0.a d() {
        return v0.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super InputStream> aVar) {
        StringBuilder sb2;
        b1.g gVar = this.f2759a;
        int r22 = q1.h.f13308b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            try {
                aVar.f(f(gVar.d(), 0, null, gVar.f1027b.a()));
            } catch (IOException e10) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e10);
                }
                aVar.c(e10);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                } else {
                    sb2 = new StringBuilder("Finished http url fetcher fetch in ");
                }
            }
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb2 = new StringBuilder("Finished http url fetcher fetch in ");
                sb2.append(q1.h.a(jElapsedRealtimeNanos));
                Log.v("HttpUrlFetcher", sb2.toString());
            }
        } catch (Throwable th2) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + q1.h.a(jElapsedRealtimeNanos));
            }
            throw th2;
        }
    }

    public final InputStream f(URL url, int r92, URL url2, Map<String, String> map) throws IOException {
        InputStream inputStream;
        if (r92 >= 5) {
            throw new v0.e("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new v0.e("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
            }
            int r32 = this.f2760b;
            httpURLConnection.setConnectTimeout(r32);
            httpURLConnection.setReadTimeout(r32);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f2761c = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f2762d = this.f2761c.getInputStream();
                if (this.f2763e) {
                    return null;
                }
                int r02 = c(this.f2761c);
                int r42 = r02 / 100;
                if (r42 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f2761c;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            inputStream = new q1.c(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            inputStream = httpURLConnection2.getInputStream();
                        }
                        this.f2762d = inputStream;
                        return inputStream;
                    } catch (IOException e10) {
                        throw new v0.e("Failed to obtain InputStream", c(httpURLConnection2), e10);
                    }
                }
                if (!(r42 == 3)) {
                    if (r02 == -1) {
                        throw new v0.e("Http request failed", r02, null);
                    }
                    try {
                        throw new v0.e(this.f2761c.getResponseMessage(), r02, null);
                    } catch (IOException e11) {
                        throw new v0.e("Failed to get a response message", r02, e11);
                    }
                }
                String headerField = this.f2761c.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new v0.e("Received empty or null redirect url", r02, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    b();
                    return f(url3, r92 + 1, url, map);
                } catch (MalformedURLException e12) {
                    throw new v0.e(androidx.browser.browseractions.b.e("Bad redirect url: ", headerField), r02, e12);
                }
            } catch (IOException e13) {
                throw new v0.e("Failed to connect or obtain data", c(this.f2761c), e13);
            }
        } catch (IOException e14) {
            throw new v0.e("URL.openConnection threw", 0, e14);
        }
    }
}
