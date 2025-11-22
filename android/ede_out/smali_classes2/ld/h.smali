.class public final Lld/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field public final synthetic a:Lld/e;


# direct methods
.method public constructor <init>(Lld/e;)V
    .locals 0

    iput-object p1, p0, Lld/h;->a:Lld/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7

    .line 1
    const-string v0, "CycledLeScannerForJellyBeanMr2"

    .line 2
    .line 3
    const-string v1, "got record"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lld/h;->a:Lld/e;

    .line 12
    .line 13
    iget-object v0, v0, Lld/b;->t:Lld/a;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    check-cast v0, Lkd/k$a;

    .line 20
    .line 21
    iget-object v1, v0, Lkd/k$a;->a:Lkd/k;

    .line 22
    .line 23
    move v2, p2

    .line 24
    move-object v5, p1

    .line 25
    move-object v6, p3

    .line 26
    invoke-virtual/range {v1 .. v6}, Lkd/k;->d(IJLandroid/bluetooth/BluetoothDevice;[B)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lld/h;->a:Lld/e;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    return-void
.end method
