package androidx.camera.core;

import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.ImageProxyBundle;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
final class SettableImageProxyBundle implements ImageProxyBundle {
    private final List<Integer> mCaptureIdList;
    private String mTagBundleKey;
    final Object mLock = new Object();

    @GuardedBy("mLock")
    final SparseArray<CallbackToFutureAdapter.Completer<ImageProxy>> mCompleters = new SparseArray<>();

    @GuardedBy("mLock")
    private final SparseArray<m5.a<ImageProxy>> mFutureResults = new SparseArray<>();

    @GuardedBy("mLock")
    private final List<ImageProxy> mOwnedImageProxies = new ArrayList();

    @GuardedBy("mLock")
    private boolean mClosed = false;

    public SettableImageProxyBundle(List<Integer> list, String str) {
        this.mCaptureIdList = list;
        this.mTagBundleKey = str;
        setup();
    }

    private void setup() {
        synchronized (this.mLock) {
            Iterator<Integer> it = this.mCaptureIdList.iterator();
            while (it.hasNext()) {
                final int r22 = it.next().intValue();
                this.mFutureResults.put(r22, CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver<ImageProxy>() { // from class: androidx.camera.core.SettableImageProxyBundle.1
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public Object attachCompleter(@NonNull CallbackToFutureAdapter.Completer<ImageProxy> completer) {
                        synchronized (SettableImageProxyBundle.this.mLock) {
                            SettableImageProxyBundle.this.mCompleters.put(r22, completer);
                        }
                        return androidx.browser.browseractions.a.b(new StringBuilder("getImageProxy(id: "), r22, ")");
                    }
                }));
            }
        }
    }

    public void addImageProxy(ImageProxy imageProxy) {
        synchronized (this.mLock) {
            if (this.mClosed) {
                return;
            }
            Integer num = (Integer) imageProxy.getImageInfo().getTagBundle().getTag(this.mTagBundleKey);
            if (num == null) {
                throw new IllegalArgumentException("CaptureId is null.");
            }
            CallbackToFutureAdapter.Completer<ImageProxy> completer = this.mCompleters.get(num.intValue());
            if (completer != null) {
                this.mOwnedImageProxies.add(imageProxy);
                completer.set(imageProxy);
            } else {
                throw new IllegalArgumentException("ImageProxyBundle does not contain this id: " + num);
            }
        }
    }

    public void close() {
        synchronized (this.mLock) {
            if (this.mClosed) {
                return;
            }
            Iterator<ImageProxy> it = this.mOwnedImageProxies.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.mOwnedImageProxies.clear();
            this.mFutureResults.clear();
            this.mCompleters.clear();
            this.mClosed = true;
        }
    }

    @Override // androidx.camera.core.impl.ImageProxyBundle
    @NonNull
    public List<Integer> getCaptureIds() {
        return Collections.unmodifiableList(this.mCaptureIdList);
    }

    @Override // androidx.camera.core.impl.ImageProxyBundle
    @NonNull
    public m5.a<ImageProxy> getImageProxy(int r52) {
        m5.a<ImageProxy> aVar;
        synchronized (this.mLock) {
            if (this.mClosed) {
                throw new IllegalStateException("ImageProxyBundle already closed.");
            }
            aVar = this.mFutureResults.get(r52);
            if (aVar == null) {
                throw new IllegalArgumentException("ImageProxyBundle does not contain this id: " + r52);
            }
        }
        return aVar;
    }

    public void reset() {
        synchronized (this.mLock) {
            if (this.mClosed) {
                return;
            }
            Iterator<ImageProxy> it = this.mOwnedImageProxies.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.mOwnedImageProxies.clear();
            this.mFutureResults.clear();
            this.mCompleters.clear();
            setup();
        }
    }
}
