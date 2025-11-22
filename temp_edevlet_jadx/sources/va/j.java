package va;

/* loaded from: classes2.dex */
public final class j {
    public static /* synthetic */ void a(int r6) {
        Object[] objArr = new Object[3];
        if (r6 == 1 || r6 == 2) {
            objArr[0] = "companionObject";
        } else if (r6 != 3) {
            objArr[0] = "propertyDescriptor";
        } else {
            objArr[0] = "memberDescriptor";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil";
        if (r6 == 1) {
            objArr[2] = "isClassCompanionObjectWithBackingFieldsInOuter";
        } else if (r6 == 2) {
            objArr[2] = "isMappedIntrinsicCompanionObject";
        } else if (r6 != 3) {
            objArr[2] = "isPropertyWithBackingFieldInOuterClass";
        } else {
            objArr[2] = "hasJvmFieldAnnotation";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }
}
