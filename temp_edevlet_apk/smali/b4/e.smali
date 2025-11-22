.class public abstract Lb4/e;
.super Ll4/a;
.source "SourceFile"

# interfaces
.implements Lb4/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll4/a;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lb4/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lb4/d;

    if-eqz v1, :cond_1

    check-cast v0, Lb4/d;

    return-object v0

    :cond_1
    new-instance v0, Lb4/f;

    invoke-direct {v0, p0}, Lb4/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
