.class public final Lx4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/c$a;,
        Lx4/c$b;
    }
.end annotation


# instance fields
.field public final a:Ly4/b;


# direct methods
.method public constructor <init>(Ly4/b;)V
    .locals 1
    .param p1    # Ly4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lx4/c;->a:Ly4/b;

    return-void
.end method


# virtual methods
.method public final a(Lz4/c;)Lz4/b;
    .locals 2
    .param p1    # Lz4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "CircleOptions must not be null."

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lz4/b;

    .line 6
    .line 7
    iget-object v1, p0, Lx4/c;->a:Ly4/b;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ly4/b;->t(Lz4/c;)Ln4/l;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lz4/b;-><init>(Ln4/l;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Lz4/g;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final b(Lz4/e;)V
    .locals 1
    .param p1    # Lz4/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lx4/c;->a:Ly4/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ly4/b;->t0(Lz4/e;)Ln4/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lz4/g;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final c(Lx4/a;)V
    .locals 1
    .param p1    # Lx4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lx4/c;->a:Ly4/b;

    .line 2
    .line 3
    iget-object p1, p1, Lx4/a;->a:Lz3/b;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ly4/b;->n0(Lz3/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lz4/g;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
