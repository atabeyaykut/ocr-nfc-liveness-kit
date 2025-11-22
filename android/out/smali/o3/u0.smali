.class public final Lo3/u0;
.super Lo3/g0;
.source "SourceFile"


# instance fields
.field public final b:Lo3/m;

.field public final c:Lh5/l;

.field public final d:Lc5/v;


# direct methods
.method public constructor <init>(ILo3/m;Lh5/l;Lc5/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo3/g0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lo3/u0;->c:Lh5/l;

    .line 5
    .line 6
    iput-object p2, p0, Lo3/u0;->b:Lo3/m;

    .line 7
    .line 8
    iput-object p4, p0, Lo3/u0;->d:Lc5/v;

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    if-ne p1, p3, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p2, Lo3/m;->b:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lo3/u0;->d:Lc5/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lr3/b;->a(Lcom/google/android/gms/common/api/Status;)Ln3/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lo3/u0;->c:Lh5/l;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lo3/u0;->c:Lh5/l;

    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lo3/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/u0;->c:Lh5/l;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lo3/u0;->b:Lo3/m;

    .line 4
    .line 5
    iget-object p1, p1, Lo3/a0;->b:Ln3/a$e;

    .line 6
    .line 7
    check-cast p1, Ln3/a$e;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Lo3/m;->a(Ln3/a$e;Lh5/l;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lo3/w0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lo3/u0;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_2
    move-exception p1

    .line 28
    throw p1
.end method

.method public final d(Lo3/q;Z)V
    .locals 2
    .param p1    # Lo3/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lo3/q;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v1, p0, Lo3/u0;->c:Lh5/l;

    .line 8
    .line 9
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p2, v1, Lh5/l;->a:Lh5/z;

    .line 13
    .line 14
    new-instance v0, Lo3/p;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Lo3/p;-><init>(Lo3/q;Lh5/l;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lh5/z;->b(Lh5/e;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final f(Lo3/a0;)Z
    .locals 0

    iget-object p1, p0, Lo3/u0;->b:Lo3/m;

    iget-boolean p1, p1, Lo3/m;->b:Z

    return p1
.end method

.method public final g(Lo3/a0;)[Lm3/d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lo3/u0;->b:Lo3/m;

    iget-object p1, p1, Lo3/m;->a:[Lm3/d;

    return-object p1
.end method
