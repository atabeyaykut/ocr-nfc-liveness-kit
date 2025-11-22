package androidx.camera.core.impl;

import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class DeferrableSurfaces {
    private DeferrableSurfaces() {
    }

    public static void decrementAll(@NonNull List<DeferrableSurface> list) {
        Iterator<DeferrableSurface> it = list.iterator();
        while (it.hasNext()) {
            it.next().decrementUseCount();
        }
    }

    public static void incrementAll(@NonNull List<DeferrableSurface> list) throws DeferrableSurface.SurfaceClosedException {
        if (list.isEmpty()) {
            return;
        }
        int r02 = 0;
        do {
            try {
                list.get(r02).incrementUseCount();
                r02++;
            } catch (DeferrableSurface.SurfaceClosedException e10) {
                for (int r03 = r02 - 1; r03 >= 0; r03--) {
                    list.get(r03).decrementUseCount();
                }
                throw e10;
            }
        } while (r02 < list.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$surfaceListWithTimeout$0(m5.a aVar, CallbackToFutureAdapter.Completer completer, long j10) {
        if (aVar.isDone()) {
            return;
        }
        completer.setException(new TimeoutException("Cannot complete surfaceList within " + j10));
        aVar.cancel(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$surfaceListWithTimeout$1(Executor executor, final m5.a aVar, final CallbackToFutureAdapter.Completer completer, final long j10) {
        executor.execute(new Runnable() { // from class: androidx.camera.core.impl.r
            @Override // java.lang.Runnable
            public final void run() {
                DeferrableSurfaces.lambda$surfaceListWithTimeout$0(aVar, completer, j10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$surfaceListWithTimeout$3(List list, ScheduledExecutorService scheduledExecutorService, final Executor executor, final long j10, final boolean z10, final CallbackToFutureAdapter.Completer completer) throws Exception {
        final m5.a aVarSuccessfulAsList = Futures.successfulAsList(list);
        final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() { // from class: androidx.camera.core.impl.s
            @Override // java.lang.Runnable
            public final void run() {
                DeferrableSurfaces.lambda$surfaceListWithTimeout$1(executor, aVarSuccessfulAsList, completer, j10);
            }
        }, j10, TimeUnit.MILLISECONDS);
        completer.addCancellationListener(new t(0, aVarSuccessfulAsList), executor);
        Futures.addCallback(aVarSuccessfulAsList, new FutureCallback<List<Surface>>() { // from class: androidx.camera.core.impl.DeferrableSurfaces.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th2) {
                completer.set(Collections.unmodifiableList(Collections.emptyList()));
                scheduledFutureSchedule.cancel(true);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable List<Surface> list2) {
                ArrayList arrayList = new ArrayList(list2);
                if (z10) {
                    arrayList.removeAll(Collections.singleton(null));
                }
                completer.set(arrayList);
                scheduledFutureSchedule.cancel(true);
            }
        }, executor);
        return "surfaceList";
    }

    @NonNull
    public static m5.a<List<Surface>> surfaceListWithTimeout(@NonNull Collection<DeferrableSurface> collection, final boolean z10, final long j10, @NonNull final Executor executor, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        final ArrayList arrayList = new ArrayList();
        Iterator<DeferrableSurface> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Futures.nonCancellationPropagating(it.next().getSurface()));
        }
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.u
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return DeferrableSurfaces.lambda$surfaceListWithTimeout$3(arrayList, scheduledExecutorService, executor, j10, z10, completer);
            }
        });
    }

    public static boolean tryIncrementAll(@NonNull List<DeferrableSurface> list) {
        try {
            incrementAll(list);
            return true;
        } catch (DeferrableSurface.SurfaceClosedException unused) {
            return false;
        }
    }
}
