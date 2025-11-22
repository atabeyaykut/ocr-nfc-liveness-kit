package com.airbnb.epoxy;

import com.airbnb.epoxy.p;
import java.util.List;

/* loaded from: classes.dex */
public abstract class h<T extends p> {
    public abstract void resetAutoModels();

    public void setControllerToStageTo(u<?> uVar, T t10) {
        uVar.controllerToStageTo = t10;
    }

    public void validateModelHashCodesHaveNotChanged(T t10) {
        List<? extends u<?>> list = t10.getAdapter().f2609g.f;
        for (int r02 = 0; r02 < list.size(); r02++) {
            list.get(r02).validateStateHasNotChangedSinceAdded("Model has changed since it was added to the controller.", r02);
        }
    }
}
