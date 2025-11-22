.class public final Lcom/google/android/gms/internal/measurement/v3;
.super Lcom/google/android/gms/internal/measurement/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n6<",
        "Lcom/google/android/gms/internal/measurement/w3;",
        "Lcom/google/android/gms/internal/measurement/v3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/w3;->x()Lcom/google/android/gms/internal/measurement/w3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/w3;->x()Lcom/google/android/gms/internal/measurement/w3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->H(Lcom/google/android/gms/internal/measurement/w3;)V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->F(Lcom/google/android/gms/internal/measurement/w3;)V

    return-void
.end method

.method public final q(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/w3;->J(Lcom/google/android/gms/internal/measurement/w3;I)V

    return-void
.end method

.method public final r(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/w3;->L(Lcom/google/android/gms/internal/measurement/w3;I)V

    return-void
.end method
