.class public final Lc5/e7;
.super Lc5/r3;
.source "SourceFile"


# instance fields
.field public c:Lcom/google/android/gms/internal/measurement/q0;

.field public final d:Lc5/d7;

.field public final e:Lc5/c7;

.field public final f:Lc5/a7;


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/r3;-><init>(Lc5/i4;)V

    new-instance p1, Lc5/d7;

    invoke-direct {p1, p0}, Lc5/d7;-><init>(Lc5/e7;)V

    iput-object p1, p0, Lc5/e7;->d:Lc5/d7;

    new-instance p1, Lc5/c7;

    invoke-direct {p1, p0}, Lc5/c7;-><init>(Lc5/e7;)V

    iput-object p1, p0, Lc5/e7;->e:Lc5/c7;

    new-instance p1, Lc5/a7;

    invoke-direct {p1, p0}, Lc5/a7;-><init>(Lc5/e7;)V

    iput-object p1, p0, Lc5/e7;->f:Lc5/a7;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lc5/t2;->b()V

    iget-object v0, p0, Lc5/e7;->c:Lcom/google/android/gms/internal/measurement/q0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/q0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q0;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc5/e7;->c:Lcom/google/android/gms/internal/measurement/q0;

    :cond_0
    return-void
.end method
