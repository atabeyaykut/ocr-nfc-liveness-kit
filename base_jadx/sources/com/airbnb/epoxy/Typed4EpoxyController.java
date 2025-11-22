package com.airbnb.epoxy;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class Typed4EpoxyController<T, U, V, W> extends p {
    private boolean allowModelBuildRequests;
    private T data1;
    private U data2;
    private V data3;
    private W data4;

    public Typed4EpoxyController() {
    }

    public Typed4EpoxyController(Handler handler, Handler handler2) {
        super(handler, handler2);
    }

    @Override // com.airbnb.epoxy.p
    public final void buildModels() {
        if (!isBuildingModels()) {
            throw new IllegalStateException("You cannot call `buildModels` directly. Call `setData` instead to trigger a model refresh with new data.");
        }
        buildModels(this.data1, this.data2, this.data3, this.data4);
    }

    public abstract void buildModels(T t10, U u10, V v10, W w);

    @Override // com.airbnb.epoxy.p
    public void moveModel(int r22, int r32) {
        this.allowModelBuildRequests = true;
        super.moveModel(r22, r32);
        this.allowModelBuildRequests = false;
    }

    @Override // com.airbnb.epoxy.p
    public void requestDelayedModelBuild(int r22) {
        if (!this.allowModelBuildRequests) {
            throw new IllegalStateException("You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data.");
        }
        super.requestDelayedModelBuild(r22);
    }

    @Override // com.airbnb.epoxy.p
    public final void requestModelBuild() {
        if (!this.allowModelBuildRequests) {
            throw new IllegalStateException("You cannot call `requestModelBuild` directly. Call `setData` instead to trigger a model refresh with new data.");
        }
        super.requestModelBuild();
    }

    public void setData(T t10, U u10, V v10, W w) {
        this.data1 = t10;
        this.data2 = u10;
        this.data3 = v10;
        this.data4 = w;
        this.allowModelBuildRequests = true;
        requestModelBuild();
        this.allowModelBuildRequests = false;
    }
}
