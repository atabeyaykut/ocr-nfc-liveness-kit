package com.airbnb.epoxy;

/* loaded from: classes.dex */
public final class d0 extends RuntimeException {
    public /* synthetic */ d0(u uVar, String str, int r42) {
        super(str + " Position: " + r42 + " Model: " + uVar.toString() + "\n\nEpoxy attribute fields on a model cannot be changed once the model is added to a controller. Check that these fields are not updated, or that the assigned objects are not mutated, outside of the buildModels method. The only exception is if the change is made inside an Interceptor callback. Consider using an interceptor if you need to change a model after it is added to the controller and before it is set on the adapter. If the model is already set on the adapter then you must call `requestModelBuild` instead to recreate all models.");
    }

    public /* synthetic */ d0(String str) {
        super(str);
    }

    public /* synthetic */ d0(String str, LinkageError linkageError) {
        super(str, linkageError);
    }
}
