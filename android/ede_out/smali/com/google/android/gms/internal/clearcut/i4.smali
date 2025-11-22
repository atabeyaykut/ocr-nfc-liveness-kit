.class public final Lcom/google/android/gms/internal/clearcut/i4;
.super Lr3/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr3/h<",
        "Lcom/google/android/gms/internal/clearcut/k4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr3/e;Ln3/d$a;Ln3/d$b;)V
    .locals 7

    const/16 v3, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lr3/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILr3/e;Lo3/c;Lo3/j;)V

    return-void
.end method


# virtual methods
.method public final l()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method

.method public final synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/clearcut/k4;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/k4;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/l4;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/l4;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method
