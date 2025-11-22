.class public final Lcom/google/android/gms/internal/measurement/z3;
.super Lcom/google/android/gms/internal/measurement/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n6<",
        "Lcom/google/android/gms/internal/measurement/a4;",
        "Lcom/google/android/gms/internal/measurement/z3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a4;->v()Lcom/google/android/gms/internal/measurement/a4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a4;->v()Lcom/google/android/gms/internal/measurement/a4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method


# virtual methods
.method public final n(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a4;->C(Lcom/google/android/gms/internal/measurement/a4;J)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/a4;->z(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;)V

    return-void
.end method

.method public final q(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/a4;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/a4;->y(Lcom/google/android/gms/internal/measurement/a4;J)V

    return-void
.end method
