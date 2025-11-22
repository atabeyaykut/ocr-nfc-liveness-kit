.class public final Lc5/a3;
.super Lr3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr3/c<",
        "Lc5/v2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc5/s6;Lc5/s6;)V
    .locals 9

    .line 1
    const/16 v5, 0x5d

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    invoke-static {p1}, Lr3/i;->a(Landroid/content/Context;)Lr3/j1;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    sget-object v4, Lm3/f;->b:Lm3/f;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v6, p3

    .line 14
    move-object v7, p4

    .line 15
    invoke-direct/range {v0 .. v8}, Lr3/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr3/j1;Lm3/f;ILr3/c$a;Lr3/c$b;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final l()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc5/v2;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lc5/v2;

    goto :goto_0

    :cond_1
    new-instance v0, Lc5/s2;

    invoke-direct {v0, p1}, Lc5/s2;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method
