.class public final Lz3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/k;


# instance fields
.field public final synthetic a:Lz3/a;


# direct methods
.method public constructor <init>(Lx4/i;)V
    .locals 0

    iput-object p1, p0, Lz3/j;->a:Lz3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/j;->a:Lz3/a;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/a;->a:Lz3/c;

    .line 4
    .line 5
    check-cast v0, Lx4/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, v0, Lx4/h;->b:Ly4/c;

    .line 11
    .line 12
    invoke-interface {v0}, Ly4/c;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lz4/g;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 20
    .line 21
    .line 22
    throw v1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
