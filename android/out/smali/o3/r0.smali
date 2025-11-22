.class public abstract Lo3/r0;
.super Lo3/g0;
.source "SourceFile"


# instance fields
.field public final b:Lh5/l;


# direct methods
.method public constructor <init>(Lh5/l;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lo3/g0;-><init>(I)V

    iput-object p1, p0, Lo3/r0;->b:Lh5/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ln3/b;

    invoke-direct {v0, p1}, Ln3/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lo3/r0;->b:Lh5/l;

    invoke-virtual {p1, v0}, Lh5/l;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lo3/r0;->b:Lh5/l;

    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lo3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lo3/r0;->h(Lo3/a0;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lo3/r0;->b:Lh5/l;

    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lo3/w0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo3/r0;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lo3/w0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo3/r0;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public abstract h(Lo3/a0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
