.class public final Lcom/google/android/gms/internal/measurement/g3;
.super Lcom/google/android/gms/internal/measurement/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n6<",
        "Lcom/google/android/gms/internal/measurement/h3;",
        "Lcom/google/android/gms/internal/measurement/g3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->w()Lcom/google/android/gms/internal/measurement/h3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->w()Lcom/google/android/gms/internal/measurement/h3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method


# virtual methods
.method public final n()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h3;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h3;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Lcom/google/android/gms/internal/measurement/k3;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n6;->f()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/l3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/h3;->B(Lcom/google/android/gms/internal/measurement/h3;Lcom/google/android/gms/internal/measurement/l3;)V

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

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/h3;->E(Lcom/google/android/gms/internal/measurement/h3;I)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/h3;->F(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V

    return-void
.end method

.method public final t(ILcom/google/android/gms/internal/measurement/l3;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n6;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/h3;->A(Lcom/google/android/gms/internal/measurement/h3;ILcom/google/android/gms/internal/measurement/l3;)V

    return-void
.end method

.method public final u(I)Lcom/google/android/gms/internal/measurement/l3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/h3;->x(I)Lcom/google/android/gms/internal/measurement/l3;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h3;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/l3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h3;->z()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
